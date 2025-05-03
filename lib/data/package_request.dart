import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_request.freezed.dart';
part 'package_request.g.dart';

@freezed
sealed class PackageRequest with _$PackageRequest {
  factory PackageRequest({required String hosted, required String owner, required String repository, required String package}) =
      _PackageRequest;

  const PackageRequest._();

  factory PackageRequest.fromJson(Map<String, dynamic> json) => _$PackageRequestFromJson(json);
}
