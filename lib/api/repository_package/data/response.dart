import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pub_semver/pub_semver.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
sealed class RepositoryPackageInformation with _$RepositoryPackageInformation implements Comparable<RepositoryPackageInformation> {
  factory RepositoryPackageInformation({
    required String version,

    /// The archive_url may be temporary and is allowed to include query-string parameters. This allows for the server to return signed URLs for S3, GCS, or other blob storage services. If temporary URLs are returned it is wise to not set expiration to less than 25 minutes (to allow for retries and clock drift).
    /// Example: https://.../archive.tar.gz
    @JsonKey(name: 'archive_url') required String archiveUrl,

    /// The archive_sha256 should be the hex-encoded sha256 checksum of the file at archive_url. It is an optional field that allows the pub client to verify the integrity of the downloaded archive.
    /// Example: 95cbaad58e2cf32d1aa852f20af1fcda1820ead92a4b1447ea7ba1ba18195d27
    @JsonKey(name: 'archive_sha256', includeIfNull: false) String? archiveSha256,

    /// The pubspec contents of package as JSON object
    required Map<String, dynamic> pubspec,

    @JsonKey(includeIfNull: false) DateTime? published,
  }) = _RepositoryPackageInformation;

  const RepositoryPackageInformation._();

  factory RepositoryPackageInformation.fromJson(Map<String, dynamic> json) => _$RepositoryPackageInformationFromJson(json);

  @override
  int compareTo(covariant RepositoryPackageInformation other) {
    return Version.parse(version).compareTo(Version.parse(other.version));
  }
}

extension IterableOfRepositoryPackageInformation on Iterable<RepositoryPackageInformation> {
  RepositoryPackageInformation firstRecommended() {
    final packages = [...this];
    packages.sort((a, b) => Version.prioritize(Version.parse(a.version), Version.parse(b.version)));
    return packages.first;
  }
}

@freezed
sealed class RepositoryPackageResponse with _$RepositoryPackageResponse {
  factory RepositoryPackageResponse({
    required String name,
    required RepositoryPackageInformation latest,
    required List<RepositoryPackageInformation> versions,
  }) = _RepositoryPackageResponse;

  const RepositoryPackageResponse._();

  factory RepositoryPackageResponse.fromJson(Map<String, dynamic> json) => _$RepositoryPackageResponseFromJson(json);
}
