import 'dart:async';

import 'package:app_backend/graphql/news/__generated__/GetNews.req.gql.dart';
import 'package:app_backend/news/ferry_network_news_transformer.dart';
import 'package:core_network_model/news.dart';
import 'package:ferry/ferry.dart';

final class FerryNewsRemoteDataSource {
  FerryNewsRemoteDataSource({
    required Client client,
    required FerryNetworkNewsTransformer transformer,
  }) : _transformer = transformer,
       _client = client;

  final Client _client;
  final FerryNetworkNewsTransformer _transformer;

  Stream<List<NetworkNews>> newsListStream() {
    final request = GGetNewsReq();
    return _client.request(request).map((res) {
      final data = res.data;
      if (data == null) {
        return [];
      }

      return data.news.map(_transformer.transformToNetworkNews).toList();
    });
  }

  Future<List<NetworkNews>> getNewsList() async {
    final request = GGetNewsReq();
    final data = (await _client.request(request).first).data;
    if (data == null) {
      return [];
    }

    return data.news.map(_transformer.transformToNetworkNews).toList();
  }
}
