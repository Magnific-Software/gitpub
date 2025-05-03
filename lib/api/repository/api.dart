import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import '/core/controller.dart';
import '/core/logger.dart';

class RepositoryPackageApi extends RouteController {
  RepositoryPackageApi(super.router);

  @override
  void build(Router router) {
    router.get('/<hosted>/<owner>/<repository>/api/packages/<package>', listVersionsOfPackage);
    router.get('/<hosted>/<owner>/<repository>/api/packages/<package>/<version>/archive.tar.gz', getPackageArchive);
  }

  FutureOr<Response> listVersionsOfPackage(Request request) {
    final logger = logging.of(request);
    logger.info('Getting repository ${request.params['repository']}');
    logger.config(json.encode({'params': request.params}));
    return Response.ok(
      json.encode({
        "name": request.params['package'],
        "latest": {
          "version": "<version>",
          // The archive_url may be temporary and is allowed to include query-string parameters. This allows for the server to return signed URLs for S3, GCS, or other blob storage services. If temporary URLs are returned it is wise to not set expiration to less than 25 minutes (to allow for retries and clock drift).
          "archive_url": "https://.../archive.tar.gz",
          // can be absent if unavailable
          // The archive_sha256 should be the hex-encoded sha256 checksum of the file at archive_url. It is an optional field that allows the pub client to verify the integrity of the downloaded archive.
          "archive_sha256": "95cbaad58e2cf32d1aa852f20af1fcda1820ead92a4b1447ea7ba1ba18195d27",
          "pubspec": {
            /* pubspec contents as JSON object */
          },
        },
        "versions": [
          {
            "version": "<package>",
            "archive_url": "https://.../archive.tar.gz",
            "archive_sha256": "95cbaad58e2cf32d1aa852f20af1fcda1820ead92a4b1447ea7ba1ba18195d27",
            "pubspec": {
              /* pubspec contents as JSON object */
            },
          },
          /* additional versions */
        ],
      }),
      headers: {'Content-Type': 'application/vnd.pub.v2+json'},
    );
  }

  FutureOr<Response> getPackageArchive(Request request) {
    final logger = logging.of(request);
    logger.info('Getting repository ${request.params['repository']}');
    logger.config(json.encode({'params': request.params}));
    return Response.ok(Uint8List(0), headers: {'Content-Type': 'application/gzip', 'Content-Encoding': 'gzip'});
  }
}
