import 'dart:io';

import 'package:app_backend/config/environment.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  final existEnvFile = File.fromUri(Uri.file('.env')).existsSync();

  Handler middleware(Handler handler) {
    return handler
        .use(
          provider<Environment>((context) {
            if (existEnvFile) {
              return Environment.fromEnvFile(env: DotEnv()..load());
            } else {
              return Environment.fromPlatformEnv();
            }
          }),
        )
        .use(requestLogger());
  }

  return serve(middleware(handler), ip, port);
}
