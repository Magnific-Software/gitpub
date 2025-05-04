import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:xxh3/xxh3.dart' as xxh3;

import '/core/constant.dart';
import '/data/package_request.dart';

class GitPackage {
  GitPackage({required this.repositoryUrl, required this.storageDirectoryName});

  factory GitPackage.fromJson(PackageRequest request) {
    final repositoryUrl = Uri.https(request.hosted, '${request.owner}/${request.repository}.git');
    final repositoryUrlHash = xxh3.xxh3String(utf8.encode(repositoryUrl.toString()));
    final storageDirectoryName = '${request.package}-$repositoryUrlHash';
    return GitPackage(repositoryUrl: repositoryUrl.toString(), storageDirectoryName: storageDirectoryName);
  }

  final String repositoryUrl;
  final String storageDirectoryName;

  late Directory storageDirectory = Directory(path.join(gitpubCacheDirectoryPath, storageDirectoryName));
}
