import 'dart:convert';

import '/core/controller.dart';

class HealthCheckApi extends RouteController {
  HealthCheckApi(super.router) {
    // initialize the since variable
    HealthCheckApi.since;
  }

  @override
  void build(Router router) {
    router.get('/', getHealthCheck);
  }

  static final since = DateTime.now().toLocal().toIso8601String();

  Future<Response> getHealthCheck(Request request) async {
    return Response.ok(
      json.encode({"port": request.url.port, "host": request.url.host, "requestPath": request.url.path, "since": since, "response": "ok"}),
      headers: {"Content-Type": "application/json"},
    );
  }
}
