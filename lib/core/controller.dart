import 'package:meta/meta.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

export 'package:shelf/shelf.dart';
export 'package:shelf_router/shelf_router.dart';

abstract class RouteController {
  RouteController(this.router) {
    build(router);
  }
  final Router router;

  void build(Router router);

  @nonVirtual
  Future<Response> call(Request request) {
    return router.call(request);
  }
}
