import 'package:core_model/quest.dart';
import 'package:core_network/quest.dart';
import 'package:core_network/src/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_quest_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
QuestRemoteDataSource questRemoteDataSource(Ref ref) =>
    QuestRemoteDataSource(ref.watch(dioClientProvider));

@RestApi()
abstract class QuestRemoteDataSource {
  factory QuestRemoteDataSource(Dio dio) = _QuestRemoteDataSource;

  @GET('/v1/quests')
  Future<List<NetworkMainQuest>> getMainQuestList({
    @Query('userId') required String userId,
  });

  @POST('/v1/quests')
  Future<QuestId> createMainQuest({
    @Field('userId') required String userId,
    @Field('title') required String title,
    @Field('description') required String description,
    @Field('note') required String note,
  });
}
