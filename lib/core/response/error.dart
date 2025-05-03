import 'dart:convert';

import 'package:shelf/shelf.dart';

Response unsupportedInternalServerError() {
  return Response.internalServerError(
    body: json.encode({
      'error': {'code': 'Unsupported', 'message': 'This repository does not support the new version endpoint.'},
    }),
    headers: {'Content-Type': 'application/json'},
  );
}
