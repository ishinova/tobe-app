import 'dart:io';

import 'package:dotenv/dotenv.dart';

final class Environment {
  factory Environment.fromPlatformEnv() => Environment._(
    backendUrl:
        Platform.environment['BACKEND_URL'] ??
        (throw Exception('BACKEND_URL is not set')),
  );

  factory Environment.fromEnvFile({required DotEnv env}) => Environment._(
    backendUrl:
        env['BACKEND_URL'] ?? (throw Exception('BACKEND_URL is not set')),
  );

  Environment._({required this.backendUrl});

  final String backendUrl;
}
