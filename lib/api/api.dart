import '/core/controller.dart';
import 'health/api.dart';
import 'repository_package/api.dart';

class RootApi extends RouteController {
  RootApi(super.router);

  @override
  void build(Router router) {
    HealthCheckApi(router);
    router.mount('/git', RepositoryPackageApi(Router()));
  }
}
