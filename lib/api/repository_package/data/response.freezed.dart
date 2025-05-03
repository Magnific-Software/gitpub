// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RepositoryPackageInformation {

 String get version;/// The archive_url may be temporary and is allowed to include query-string parameters. This allows for the server to return signed URLs for S3, GCS, or other blob storage services. If temporary URLs are returned it is wise to not set expiration to less than 25 minutes (to allow for retries and clock drift).
/// Example: https://.../archive.tar.gz
@JsonKey(name: 'archive_url') String get archiveUrl;/// The archive_sha256 should be the hex-encoded sha256 checksum of the file at archive_url. It is an optional field that allows the pub client to verify the integrity of the downloaded archive.
/// Example: 95cbaad58e2cf32d1aa852f20af1fcda1820ead92a4b1447ea7ba1ba18195d27
@JsonKey(name: 'archive_sha256', includeIfNull: false) String? get archiveSha256;/// The pubspec contents of package as JSON object
 Map<String, dynamic> get pubspec;@JsonKey(includeIfNull: false) DateTime? get published;
/// Create a copy of RepositoryPackageInformation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepositoryPackageInformationCopyWith<RepositoryPackageInformation> get copyWith => _$RepositoryPackageInformationCopyWithImpl<RepositoryPackageInformation>(this as RepositoryPackageInformation, _$identity);

  /// Serializes this RepositoryPackageInformation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepositoryPackageInformation&&(identical(other.version, version) || other.version == version)&&(identical(other.archiveUrl, archiveUrl) || other.archiveUrl == archiveUrl)&&(identical(other.archiveSha256, archiveSha256) || other.archiveSha256 == archiveSha256)&&const DeepCollectionEquality().equals(other.pubspec, pubspec)&&(identical(other.published, published) || other.published == published));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,archiveUrl,archiveSha256,const DeepCollectionEquality().hash(pubspec),published);

@override
String toString() {
  return 'RepositoryPackageInformation(version: $version, archiveUrl: $archiveUrl, archiveSha256: $archiveSha256, pubspec: $pubspec, published: $published)';
}


}

/// @nodoc
abstract mixin class $RepositoryPackageInformationCopyWith<$Res>  {
  factory $RepositoryPackageInformationCopyWith(RepositoryPackageInformation value, $Res Function(RepositoryPackageInformation) _then) = _$RepositoryPackageInformationCopyWithImpl;
@useResult
$Res call({
 String version,@JsonKey(name: 'archive_url') String archiveUrl,@JsonKey(name: 'archive_sha256', includeIfNull: false) String? archiveSha256, Map<String, dynamic> pubspec,@JsonKey(includeIfNull: false) DateTime? published
});




}
/// @nodoc
class _$RepositoryPackageInformationCopyWithImpl<$Res>
    implements $RepositoryPackageInformationCopyWith<$Res> {
  _$RepositoryPackageInformationCopyWithImpl(this._self, this._then);

  final RepositoryPackageInformation _self;
  final $Res Function(RepositoryPackageInformation) _then;

/// Create a copy of RepositoryPackageInformation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? archiveUrl = null,Object? archiveSha256 = freezed,Object? pubspec = null,Object? published = freezed,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,archiveUrl: null == archiveUrl ? _self.archiveUrl : archiveUrl // ignore: cast_nullable_to_non_nullable
as String,archiveSha256: freezed == archiveSha256 ? _self.archiveSha256 : archiveSha256 // ignore: cast_nullable_to_non_nullable
as String?,pubspec: null == pubspec ? _self.pubspec : pubspec // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,published: freezed == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RepositoryPackageInformation extends RepositoryPackageInformation {
   _RepositoryPackageInformation({required this.version, @JsonKey(name: 'archive_url') required this.archiveUrl, @JsonKey(name: 'archive_sha256', includeIfNull: false) this.archiveSha256, required final  Map<String, dynamic> pubspec, @JsonKey(includeIfNull: false) this.published}): _pubspec = pubspec,super._();
  factory _RepositoryPackageInformation.fromJson(Map<String, dynamic> json) => _$RepositoryPackageInformationFromJson(json);

@override final  String version;
/// The archive_url may be temporary and is allowed to include query-string parameters. This allows for the server to return signed URLs for S3, GCS, or other blob storage services. If temporary URLs are returned it is wise to not set expiration to less than 25 minutes (to allow for retries and clock drift).
/// Example: https://.../archive.tar.gz
@override@JsonKey(name: 'archive_url') final  String archiveUrl;
/// The archive_sha256 should be the hex-encoded sha256 checksum of the file at archive_url. It is an optional field that allows the pub client to verify the integrity of the downloaded archive.
/// Example: 95cbaad58e2cf32d1aa852f20af1fcda1820ead92a4b1447ea7ba1ba18195d27
@override@JsonKey(name: 'archive_sha256', includeIfNull: false) final  String? archiveSha256;
/// The pubspec contents of package as JSON object
 final  Map<String, dynamic> _pubspec;
/// The pubspec contents of package as JSON object
@override Map<String, dynamic> get pubspec {
  if (_pubspec is EqualUnmodifiableMapView) return _pubspec;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_pubspec);
}

@override@JsonKey(includeIfNull: false) final  DateTime? published;

/// Create a copy of RepositoryPackageInformation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepositoryPackageInformationCopyWith<_RepositoryPackageInformation> get copyWith => __$RepositoryPackageInformationCopyWithImpl<_RepositoryPackageInformation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RepositoryPackageInformationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepositoryPackageInformation&&(identical(other.version, version) || other.version == version)&&(identical(other.archiveUrl, archiveUrl) || other.archiveUrl == archiveUrl)&&(identical(other.archiveSha256, archiveSha256) || other.archiveSha256 == archiveSha256)&&const DeepCollectionEquality().equals(other._pubspec, _pubspec)&&(identical(other.published, published) || other.published == published));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,archiveUrl,archiveSha256,const DeepCollectionEquality().hash(_pubspec),published);

@override
String toString() {
  return 'RepositoryPackageInformation(version: $version, archiveUrl: $archiveUrl, archiveSha256: $archiveSha256, pubspec: $pubspec, published: $published)';
}


}

/// @nodoc
abstract mixin class _$RepositoryPackageInformationCopyWith<$Res> implements $RepositoryPackageInformationCopyWith<$Res> {
  factory _$RepositoryPackageInformationCopyWith(_RepositoryPackageInformation value, $Res Function(_RepositoryPackageInformation) _then) = __$RepositoryPackageInformationCopyWithImpl;
@override @useResult
$Res call({
 String version,@JsonKey(name: 'archive_url') String archiveUrl,@JsonKey(name: 'archive_sha256', includeIfNull: false) String? archiveSha256, Map<String, dynamic> pubspec,@JsonKey(includeIfNull: false) DateTime? published
});




}
/// @nodoc
class __$RepositoryPackageInformationCopyWithImpl<$Res>
    implements _$RepositoryPackageInformationCopyWith<$Res> {
  __$RepositoryPackageInformationCopyWithImpl(this._self, this._then);

  final _RepositoryPackageInformation _self;
  final $Res Function(_RepositoryPackageInformation) _then;

/// Create a copy of RepositoryPackageInformation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? archiveUrl = null,Object? archiveSha256 = freezed,Object? pubspec = null,Object? published = freezed,}) {
  return _then(_RepositoryPackageInformation(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,archiveUrl: null == archiveUrl ? _self.archiveUrl : archiveUrl // ignore: cast_nullable_to_non_nullable
as String,archiveSha256: freezed == archiveSha256 ? _self.archiveSha256 : archiveSha256 // ignore: cast_nullable_to_non_nullable
as String?,pubspec: null == pubspec ? _self._pubspec : pubspec // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,published: freezed == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$RepositoryPackageResponse {

 String get name; RepositoryPackageInformation get latest; List<RepositoryPackageInformation> get versions;
/// Create a copy of RepositoryPackageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepositoryPackageResponseCopyWith<RepositoryPackageResponse> get copyWith => _$RepositoryPackageResponseCopyWithImpl<RepositoryPackageResponse>(this as RepositoryPackageResponse, _$identity);

  /// Serializes this RepositoryPackageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepositoryPackageResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.latest, latest) || other.latest == latest)&&const DeepCollectionEquality().equals(other.versions, versions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,latest,const DeepCollectionEquality().hash(versions));

@override
String toString() {
  return 'RepositoryPackageResponse(name: $name, latest: $latest, versions: $versions)';
}


}

/// @nodoc
abstract mixin class $RepositoryPackageResponseCopyWith<$Res>  {
  factory $RepositoryPackageResponseCopyWith(RepositoryPackageResponse value, $Res Function(RepositoryPackageResponse) _then) = _$RepositoryPackageResponseCopyWithImpl;
@useResult
$Res call({
 String name, RepositoryPackageInformation latest, List<RepositoryPackageInformation> versions
});


$RepositoryPackageInformationCopyWith<$Res> get latest;

}
/// @nodoc
class _$RepositoryPackageResponseCopyWithImpl<$Res>
    implements $RepositoryPackageResponseCopyWith<$Res> {
  _$RepositoryPackageResponseCopyWithImpl(this._self, this._then);

  final RepositoryPackageResponse _self;
  final $Res Function(RepositoryPackageResponse) _then;

/// Create a copy of RepositoryPackageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? latest = null,Object? versions = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latest: null == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as RepositoryPackageInformation,versions: null == versions ? _self.versions : versions // ignore: cast_nullable_to_non_nullable
as List<RepositoryPackageInformation>,
  ));
}
/// Create a copy of RepositoryPackageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepositoryPackageInformationCopyWith<$Res> get latest {
  
  return $RepositoryPackageInformationCopyWith<$Res>(_self.latest, (value) {
    return _then(_self.copyWith(latest: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _RepositoryPackageResponse extends RepositoryPackageResponse {
   _RepositoryPackageResponse({required this.name, required this.latest, required final  List<RepositoryPackageInformation> versions}): _versions = versions,super._();
  factory _RepositoryPackageResponse.fromJson(Map<String, dynamic> json) => _$RepositoryPackageResponseFromJson(json);

@override final  String name;
@override final  RepositoryPackageInformation latest;
 final  List<RepositoryPackageInformation> _versions;
@override List<RepositoryPackageInformation> get versions {
  if (_versions is EqualUnmodifiableListView) return _versions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_versions);
}


/// Create a copy of RepositoryPackageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepositoryPackageResponseCopyWith<_RepositoryPackageResponse> get copyWith => __$RepositoryPackageResponseCopyWithImpl<_RepositoryPackageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RepositoryPackageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepositoryPackageResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.latest, latest) || other.latest == latest)&&const DeepCollectionEquality().equals(other._versions, _versions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,latest,const DeepCollectionEquality().hash(_versions));

@override
String toString() {
  return 'RepositoryPackageResponse(name: $name, latest: $latest, versions: $versions)';
}


}

/// @nodoc
abstract mixin class _$RepositoryPackageResponseCopyWith<$Res> implements $RepositoryPackageResponseCopyWith<$Res> {
  factory _$RepositoryPackageResponseCopyWith(_RepositoryPackageResponse value, $Res Function(_RepositoryPackageResponse) _then) = __$RepositoryPackageResponseCopyWithImpl;
@override @useResult
$Res call({
 String name, RepositoryPackageInformation latest, List<RepositoryPackageInformation> versions
});


@override $RepositoryPackageInformationCopyWith<$Res> get latest;

}
/// @nodoc
class __$RepositoryPackageResponseCopyWithImpl<$Res>
    implements _$RepositoryPackageResponseCopyWith<$Res> {
  __$RepositoryPackageResponseCopyWithImpl(this._self, this._then);

  final _RepositoryPackageResponse _self;
  final $Res Function(_RepositoryPackageResponse) _then;

/// Create a copy of RepositoryPackageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? latest = null,Object? versions = null,}) {
  return _then(_RepositoryPackageResponse(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latest: null == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as RepositoryPackageInformation,versions: null == versions ? _self._versions : versions // ignore: cast_nullable_to_non_nullable
as List<RepositoryPackageInformation>,
  ));
}

/// Create a copy of RepositoryPackageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepositoryPackageInformationCopyWith<$Res> get latest {
  
  return $RepositoryPackageInformationCopyWith<$Res>(_self.latest, (value) {
    return _then(_self.copyWith(latest: value));
  });
}
}

// dart format on
