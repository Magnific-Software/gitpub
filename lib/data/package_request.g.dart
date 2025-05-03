// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageRequest _$PackageRequestFromJson(Map<String, dynamic> json) => _PackageRequest(
  hosted: json['hosted'] as String,
  owner: json['owner'] as String,
  repository: json['repository'] as String,
  package: json['package'] as String,
);

Map<String, dynamic> _$PackageRequestToJson(_PackageRequest instance) => <String, dynamic>{
  'hosted': instance.hosted,
  'owner': instance.owner,
  'repository': instance.repository,
  'package': instance.package,
};
