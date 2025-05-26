import 'dart:async';

import 'package:app_backend/graphql/quest/__generated__/GetQuests.req.gql.dart';
import 'package:app_backend/graphql/quest/__generated__/InsertMainQuest.req.gql.dart';
import 'package:app_backend/quests/ferry_network_main_quest_transformer.dart';
import 'package:core_network_model/quest.dart';
import 'package:ferry/ferry.dart';

final class FerryMainQuestRemoteDataSource {
  FerryMainQuestRemoteDataSource({
    required Client client,
    required FerryNetworkMainQuestTransformer transformer,
  }) : _transformer = transformer,
       _client = client;

  final Client _client;
  final FerryNetworkMainQuestTransformer _transformer;

  Stream<List<NetworkMainQuest>> mainQuestListStream() {
    final request = GGetQuestsReq();
    return _client.request(request).map((res) {
      final data = res.data;
      if (data == null) {
        return [];
      }

      return data.mainQuests
          .map(_transformer.transformToNetworkMainQuest)
          .toList();
    });
  }

  Future<List<NetworkMainQuest>> getMainQuestList({
    required String userId,
  }) async {
    final request = GGetQuestsReq((b) => b.vars.userId = userId);
    final data = (await _client.request(request).first).data;
    if (data == null) {
      return [];
    }

    return data.mainQuests
        .map(_transformer.transformToNetworkMainQuest)
        .toList();
  }

  Future<String> insertMainQuest({
    required String title,
    required String description,
    required String note,
    required String userId,
  }) async {
    final request = GInsertMainQuestReq(
      (b) => b
        ..vars.userId = userId
        ..vars.title = title
        ..vars.description = description
        ..vars.note = note,
    );

    final data = (await _client.request(request).first).data;
    if (data == null) {
      return '';
    }

    return data.insertMainQuestsOne?.id ?? '';
  }
}
