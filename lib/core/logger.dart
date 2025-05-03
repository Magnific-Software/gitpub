import 'dart:io';

import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';
import 'package:stack_trace/stack_trace.dart';

final logging = () {
  hierarchicalLoggingEnabled = true;

  Logger.root.level = Level.ALL;
  final logger = Logger('gitpub');
  logger.level = Level.ALL;

  Logger.root.onRecord.listen(_onLogs);

  return logger;
}();

void _onLogs(LogRecord record) {
  final id = record.sequenceNumber.toString();
  final logBuffer = StringBuffer('$pid ($id)');
  final isServer = record.level == LevelExtension.SERVER || record.level == LevelExtension.SERVER_ERROR;
  if (!isServer) {
    final time = record.time.toLocal().toIso8601String();
    logBuffer.write(' $time');
  }
  final level = record.level.name.replaceAll(RegExp(r'SERVER|SERVER_'), '');
  if (level.isNotEmpty) {
    logBuffer.write(' $level');
  }
  final message = record.message;
  final name = record.loggerName;
  if (!isServer && name.isNotEmpty && name != logging.fullName) {
    logBuffer.write(' [${name.replaceFirst('${logging.fullName}.', '')}]');
  }
  logBuffer.write(' $message');

  if (record.level >= Level.SEVERE) {
    logBuffer.writeln();
    if (record.error != null) {
      logBuffer.writeln(record.error);
    }
    final stackTrace = record.stackTrace;
    final Chain chain;
    if (stackTrace != null) {
      chain = Chain.forTrace(stackTrace).terse;
    } else {
      chain = Chain.current();
    }
    logBuffer.writeln(chain);
  }
  print(logBuffer.toString());
}

extension LevelExtension on Level {
  /// Key for informational messages ([value] = 850).
  static const Level SERVER = Level('SERVER', 850);
  static const Level SERVER_ERROR = Level('SERVER_ERROR', 1100);
}

extension LoggerExtension on Logger {
  Logger child(String name) {
    return Logger('$fullName.$name');
  }

  void server(String message, bool isError) {
    log(isError ? LevelExtension.SERVER_ERROR : LevelExtension.SERVER, message);
  }

  Logger of(Request request) {
    return logging.child('${request.handlerPath}.${request.method}');
  }
}
