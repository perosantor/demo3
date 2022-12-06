import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_response.freezed.dart';
part 'job_response.g.dart';

@freezed
class JobResponse with _$JobResponse {
  @JsonSerializable(explicitToJson: true)
  const factory JobResponse({
    required int id,
    required String title,
    required AddressResponse pickup,
    @JsonKey(name: 'drop_off') required AddressResponse dropOff,
    @JsonKey(name: 'date_posted') required String datePosted,
    @JsonKey(name: 'expected_delivery_date') required String expectedDeliveryDate,
  }) = _JobResponse;

  factory JobResponse.fromJson(Map<String, dynamic> json) => _$JobResponseFromJson(json);
}

@freezed
class AddressResponse with _$AddressResponse {
  @JsonSerializable(explicitToJson: true)
  const factory AddressResponse({
    @JsonKey(name: 'address_line_1') required String firstAddressLine,
    @JsonKey(name: 'postcode') required String postcode,

  }) = _AddressResponse;

  factory AddressResponse.fromJson(Map<String, dynamic> json) => _$AddressResponseFromJson(json);
}