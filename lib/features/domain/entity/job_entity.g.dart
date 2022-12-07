// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobEntity _$$_JobEntityFromJson(Map<String, dynamic> json) => _$_JobEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      status: $enumDecodeNullable(_$JobStatusEnumMap, json['status']) ??
          JobStatus.idle,
      pickupAddress: json['pickupAddress'] as String,
      dropOffAddress: json['dropOffAddress'] as String,
      datePosted: DateTime.parse(json['datePosted'] as String),
      deliveryDate: DateTime.parse(json['deliveryDate'] as String),
    );

Map<String, dynamic> _$$_JobEntityToJson(_$_JobEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': _$JobStatusEnumMap[instance.status]!,
      'pickupAddress': instance.pickupAddress,
      'dropOffAddress': instance.dropOffAddress,
      'datePosted': instance.datePosted.toIso8601String(),
      'deliveryDate': instance.deliveryDate.toIso8601String(),
    };

const _$JobStatusEnumMap = {
  JobStatus.accepted: 'accepted',
  JobStatus.rejected: 'rejected',
  JobStatus.idle: 'idle',
};
