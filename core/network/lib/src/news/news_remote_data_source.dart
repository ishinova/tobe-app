import 'package:core_network/news.dart';
import 'package:core_network/src/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
NewsRemoteDataSource newsRemoteDataSource(Ref ref) =>
    NewsRemoteDataSource(ref.watch(dioClientProvider));

@RestApi()
abstract class NewsRemoteDataSource {
  factory NewsRemoteDataSource(Dio dio) = _NewsRemoteDataSource;

  @GET('/v1/news')
  Future<List<NetworkNews>> getNewsList();
}
