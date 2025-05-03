import 'dart:async';

import '../api/repository_package/data/response.dart';
import '../data/package_request.dart';

class GitPackageRepository {
  const GitPackageRepository();

  FutureOr<List<RepositoryPackageInformation>> getVersions(PackageRequest request) async {
    if (request.package.length < 3) {
      return const [];
    }
    return [
      RepositoryPackageInformation(archiveUrl: 'https://.../archive.tar.gz', version: '1.0.0', pubspec: {}),
      RepositoryPackageInformation(archiveUrl: 'https://.../archive.tar.gz', version: '2.0.0', pubspec: {}),
    ];
  }
}
