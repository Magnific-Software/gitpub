import 'dart:io';

import 'package:git/git.dart';
import 'package:io/io.dart';
import 'package:path/path.dart' as path;

import '../core/logger.dart';
import '../repository/git_package/data/package.dart';

class GitPackageIOService {
  const GitPackageIOService();

  Future<bool> clone(GitPackage package) async {
    await Directory(package.storageDirectory.path).create(recursive: true);
    final process = await runGit(['clone', package.repositoryUrl, 'HEAD'], processWorkingDir: package.storageDirectory.path);
    return ExitCode.success.code == process.exitCode;
  }

  Future<bool> pull(GitPackage package) async {
    final process = await runGit(['pull'], processWorkingDir: path.join(package.storageDirectory.path, 'HEAD'));
    return ExitCode.success.code == process.exitCode;
  }

  Future<GitDir?> getGitDir(GitPackage package) async {
    final gitDir = Directory(path.join(package.storageDirectory.path, 'HEAD'));
    if (gitDir.existsSync()) {
      final headBranch = await getHeadBranch(package);
      if (headBranch == null) {
        return null;
      }

      await pull(package);
    } else {
      await clone(package);
    }

    if (!await GitDir.isGitDir(gitDir.path)) {
      return null;
    }

    return GitDir.fromExisting(gitDir.path);
  }

  Future<Map<String, String>> getVersions(GitPackage package, GitDir dir) async {
    final versions = <String, String>{};
    final log = logging.child('GitPackageIOService.getVersions');

    await for (final tag in dir.tags()) {
      log.fine('Checking tag: $tag');
      // versions[tag.name] = tag.sha;
      // asynchronously evaluate if the repository code with the tag has the pubspec.yaml for this package.
    }

    return versions;
  }

  Future<String?> getHeadBranch(GitPackage package) async {
    final process = await runGit(['remote', 'show', package.repositoryUrl]);
    final output = process.stdout?.toString();
    if (ExitCode.success.code != process.exitCode) {
      return null;
    }

    if (output == null || output.isEmpty) {
      return null;
    }

    final branch = RegExp(r'HEAD branch: (.*)').firstMatch(output);
    if (branch == null) {
      return null;
    }

    return branch.group(1);
  }
}
