import 'package:simple_logger/simple_logger.dart';

late final SimpleLogger logger;

final class Logger {
  Logger._();

  static void initialize({required bool includeCallerInfo}) {
    logger = SimpleLogger()
      ..mode = LoggerMode.print
      ..setLevel(Level.FINEST, includeCallerInfo: includeCallerInfo);
  }
}
