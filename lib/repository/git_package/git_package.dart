import 'dart:async';

import '../../api/repository_package/data/response.dart';
import '../../data/package_request.dart';
import '../../service/git_package.dart';
import 'data/package.dart';

class GitPackageRepository {
  const GitPackageRepository(this.gitPackageIOService);

  final GitPackageIOService gitPackageIOService;

  FutureOr<List<RepositoryPackageInformation>> getVersions(PackageRequest request) async {
    if (request.package.length < 3) {
      return const [];
    }

    final gitPackage = GitPackage.fromJson(request);

    final gitDir = await gitPackageIOService.getGitDir(gitPackage);
    if (gitDir == null) {
      return const [];
    }

    return [
      RepositoryPackageInformation(archiveUrl: 'https://.../archive.tar.gz', version: '1.0.0', pubspec: {}),
      RepositoryPackageInformation(archiveUrl: 'https://.../archive.tar.gz', version: '2.0.0', pubspec: {}),
    ];
  }
}
