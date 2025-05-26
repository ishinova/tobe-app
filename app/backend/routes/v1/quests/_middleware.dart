import 'package:app_backend/quests/ferry_main_quest_remote_data_source.dart';
import 'package:app_backend/quests/ferry_network_main_quest_transformer.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return (context) async {
    return await handler
        .use(
          provider<FerryMainQuestRemoteDataSource>((context) {
            return FerryMainQuestRemoteDataSource(
              client: context.read(),
              transformer: FerryNetworkMainQuestTransformer(),
            );
          }),
        )
        .call(context);
  };
}
