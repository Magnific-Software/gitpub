// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageRequest {

 String get hosted; String get owner; String get repository; String get package;
/// Create a copy of PackageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageRequestCopyWith<PackageRequest> get copyWith => _$PackageRequestCopyWithImpl<PackageRequest>(this as PackageRequest, _$identity);

  /// Serializes this PackageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageRequest&&(identical(other.hosted, hosted) || other.hosted == hosted)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.repository, repository) || other.repository == repository)&&(identical(other.package, package) || other.package == package));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hosted,owner,repository,package);

@override
String toString() {
  return 'PackageRequest(hosted: $hosted, owner: $owner, repository: $repository, package: $package)';
}


}

/// @nodoc
abstract mixin class $PackageRequestCopyWith<$Res>  {
  factory $PackageRequestCopyWith(PackageRequest value, $Res Function(PackageRequest) _then) = _$PackageRequestCopyWithImpl;
@useResult
$Res call({
 String hosted, String owner, String repository, String package
});




}
/// @nodoc
class _$PackageRequestCopyWithImpl<$Res>
    implements $PackageRequestCopyWith<$Res> {
  _$PackageRequestCopyWithImpl(this._self, this._then);

  final PackageRequest _self;
  final $Res Function(PackageRequest) _then;

/// Create a copy of PackageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hosted = null,Object? owner = null,Object? repository = null,Object? package = null,}) {
  return _then(_self.copyWith(
hosted: null == hosted ? _self.hosted : hosted // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,repository: null == repository ? _self.repository : repository // ignore: cast_nullable_to_non_nullable
as String,package: null == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PackageRequest extends PackageRequest {
   _PackageRequest({required this.hosted, required this.owner, required this.repository, required this.package}): super._();
  factory _PackageRequest.fromJson(Map<String, dynamic> json) => _$PackageRequestFromJson(json);

@override final  String hosted;
@override final  String owner;
@override final  String repository;
@override final  String package;

/// Create a copy of PackageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageRequestCopyWith<_PackageRequest> get copyWith => __$PackageRequestCopyWithImpl<_PackageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageRequest&&(identical(other.hosted, hosted) || other.hosted == hosted)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.repository, repository) || other.repository == repository)&&(identical(other.package, package) || other.package == package));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hosted,owner,repository,package);

@override
String toString() {
  return 'PackageRequest(hosted: $hosted, owner: $owner, repository: $repository, package: $package)';
}


}

/// @nodoc
abstract mixin class _$PackageRequestCopyWith<$Res> implements $PackageRequestCopyWith<$Res> {
  factory _$PackageRequestCopyWith(_PackageRequest value, $Res Function(_PackageRequest) _then) = __$PackageRequestCopyWithImpl;
@override @useResult
$Res call({
 String hosted, String owner, String repository, String package
});




}
/// @nodoc
class __$PackageRequestCopyWithImpl<$Res>
    implements _$PackageRequestCopyWith<$Res> {
  __$PackageRequestCopyWithImpl(this._self, this._then);

  final _PackageRequest _self;
  final $Res Function(_PackageRequest) _then;

/// Create a copy of PackageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hosted = null,Object? owner = null,Object? repository = null,Object? package = null,}) {
  return _then(_PackageRequest(
hosted: null == hosted ? _self.hosted : hosted // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,repository: null == repository ? _self.repository : repository // ignore: cast_nullable_to_non_nullable
as String,package: null == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
