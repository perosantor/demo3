// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobResponse _$$_JobResponseFromJson(Map<String, dynamic> json) =>
    _$_JobResponse(
      id: json['id'] as int,
      title: json['title'] as String,
      pickup: AddressResponse.fromJson(json['pickup'] as Map<String, dynamic>),
      dropOff:
          AddressResponse.fromJson(json['drop_off'] as Map<String, dynamic>),
      datePosted: json['date_posted'] as String,
      expectedDeliveryDate: json['expected_delivery_date'] as String,
    );

Map<String, dynamic> _$$_JobResponseToJson(_$_JobResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'pickup': instance.pickup.toJson(),
      'drop_off': instance.dropOff.toJson(),
      'date_posted': instance.datePosted,
      'expected_delivery_date': instance.expectedDeliveryDate,
    };

_$_AddressResponse _$$_AddressResponseFromJson(Map<String, dynamic> json) =>
    _$_AddressResponse(
      firstAddressLine: json['address_line_1'] as String,
      postcode: json['postcode'] as String,
    );

Map<String, dynamic> _$$_AddressResponseToJson(_$_AddressResponse instance) =>
    <String, dynamic>{
      'address_line_1': instance.firstAddressLine,
      'postcode': instance.postcode,
    };
