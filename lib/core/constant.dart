import 'dart:io';

import 'package:path/path.dart' as path;

final String gitpubHostedUrl = Platform.environment['GITPUB_HOSTED_URL'] ?? 'http://localhost:8080';
final String gitpubCacheDirectoryPath = Platform.environment['GITPUB_CACHE'] ?? path.join(Directory.current.absolute.path, '.gitpub-cache');
