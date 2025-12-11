import '../Abstract/logger.dart';

class ConsoleLogger extends Logger {
  void logMessage(String message) {
    print(message);
  }
}