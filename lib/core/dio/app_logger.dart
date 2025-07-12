import 'dart:developer' as developer;

class AppLogger {
  static void i(String message) {
    developer.log(message, level: 800, name: 'INFO');
  }

  static void d(String message) {
    developer.log(message, level: 700, name: 'DEBUG');
  }

  static void w(String message) {
    developer.log(message, level: 900, name: 'WARNING');
  }

  static void e(String message, [Object? error, StackTrace? stackTrace]) {
    developer.log(message, level: 1000, name: 'ERROR', error: error, stackTrace: stackTrace);
  }
}
