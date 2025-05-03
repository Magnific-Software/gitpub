import '/core/controller.dart';
import 'repository/api.dart';

class RootApi extends RouteController {
  RootApi(super.router);

  @override
  void build(Router router) {
    router.mount('/git', RepositoryPackageApi(Router()));
  }
}
