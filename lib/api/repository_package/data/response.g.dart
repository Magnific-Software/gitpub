// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RepositoryPackageInformation _$RepositoryPackageInformationFromJson(Map<String, dynamic> json) => _RepositoryPackageInformation(
  version: json['version'] as String,
  archiveUrl: json['archive_url'] as String,
  archiveSha256: json['archive_sha256'] as String?,
  pubspec: json['pubspec'] as Map<String, dynamic>,
  published: json['published'] == null ? null : DateTime.parse(json['published'] as String),
);

Map<String, dynamic> _$RepositoryPackageInformationToJson(_RepositoryPackageInformation instance) => <String, dynamic>{
  'version': instance.version,
  'archive_url': instance.archiveUrl,
  if (instance.archiveSha256 case final value?) 'archive_sha256': value,
  'pubspec': instance.pubspec,
  if (instance.published?.toIso8601String() case final value?) 'published': value,
};

_RepositoryPackageResponse _$RepositoryPackageResponseFromJson(Map<String, dynamic> json) => _RepositoryPackageResponse(
  name: json['name'] as String,
  latest: RepositoryPackageInformation.fromJson(json['latest'] as Map<String, dynamic>),
  versions: (json['versions'] as List<dynamic>).map((e) => RepositoryPackageInformation.fromJson(e as Map<String, dynamic>)).toList(),
);

Map<String, dynamic> _$RepositoryPackageResponseToJson(_RepositoryPackageResponse instance) => <String, dynamic>{
  'name': instance.name,
  'latest': instance.latest,
  'versions': instance.versions,
};
