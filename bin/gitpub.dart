import 'dart:io';

import 'package:gitpub/api/api.dart';
import 'package:gitpub/core/logger.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_helmet/shelf_helmet.dart';
import 'package:shelf_router/shelf_router.dart';

void main(List<String> args) async {
  // Configure a pipeline that logs requests.
  final handler = Pipeline().addMiddleware(helmet()).addMiddleware(logRequests(logger: logging.server)).addHandler(RootApi(Router()));

  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;
  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port, poweredByHeader: 'gitpub');

  logging.info('Server listening on port ${server.port}');
}
