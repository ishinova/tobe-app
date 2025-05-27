import 'package:app_backend/news/ferry_network_news_transformer.dart';
import 'package:app_backend/news/ferry_news_remote_data_source.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return (context) async {
    return await handler
        .use(
          provider<FerryNewsRemoteDataSource>((context) {
            return FerryNewsRemoteDataSource(
              client: context.read(),
              transformer: FerryNetworkNewsTransformer(),
            );
          }),
        )
        .call(context);
  };
}
