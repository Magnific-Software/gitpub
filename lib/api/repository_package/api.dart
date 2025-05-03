import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import '/core/controller.dart';
import '/core/logger.dart';
import '/core/response/error.dart';
import '/data/package_request.dart';
import '/repository/git_package.dart';
import 'data/response.dart';

class RepositoryPackageApi extends RouteController {
  RepositoryPackageApi(super.router);

  @override
  void build(Router router) {
    router.get('/<hosted>/<owner>/<repository>/api/packages/<package>', listVersionsOfPackage);
    router.get('/<hosted>/<owner>/<repository>/api/packages/<package>/<version>/archive.tar.gz', getPackageArchive);
    router.get('/<hosted>/<owner>/<repository>/api/packages/versions/new', unsupportedInternalServerError);
    router.get('/<hosted>/<owner>/<repository>/api/packages/<package>/advisories', listSecurityAdvisories);
  }

  FutureOr<Response> listVersionsOfPackage(Request request) async {
    final logger = logging.of(request);
    final packageRequest = PackageRequest.fromJson(request.params);

    logger.fine(json.encode({'params': request.params}));

    final repo = GitPackageRepository();

    final versions = await repo.getVersions(packageRequest);

    if (versions.isEmpty) {
      return Response.notFound(
        json.encode({
          'error': {'code': 'NoSuchKey', 'message': 'The requested package does not exist.'},
        }),
        headers: {'Content-Type': 'application/vnd.pub.v2+json'},
      );
    }

    return Response.ok(
      json.encode({"name": request.params['package'], "latest": versions.firstRecommended(), "versions": versions}),
      headers: {'Content-Type': 'application/vnd.pub.v2+json'},
    );
  }

  FutureOr<Response> getPackageArchive(Request request) {
    final logger = logging.of(request);
    logger.info('Getting repository ${request.params['repository']}');
    logger.config(json.encode({'params': request.params}));
    return Response.ok(Uint8List(0), headers: {'Content-Type': 'application/gzip', 'Content-Encoding': 'gzip'});
  }

  FutureOr<Response> listSecurityAdvisories(Request request) {
    final logger = logging.of(request);
    logger.config(json.encode({'params': request.params}));
    return Response.ok(
      json.encode({
        "advisories": const [
          // {
          //  /* Security advisory in OSV format, see https://ossf.github.io/osv-schema/ */
          // },
          /* additional security advisories */
        ],
        "advisoriesUpdated": DateTime.now().toUtc().toIso8601String(),
      }),
      headers: {'Content-Type': 'application/vnd.pub.v2+json'},
    );
  }
}
