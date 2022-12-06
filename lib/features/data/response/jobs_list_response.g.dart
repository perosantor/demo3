// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobsListResponse _$$_JobsListResponseFromJson(Map<String, dynamic> json) =>
    _$_JobsListResponse(
      jobsList: (json['jobsList'] as List<dynamic>)
          .map((e) => JobResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JobsListResponseToJson(_$_JobsListResponse instance) =>
    <String, dynamic>{
      'jobsList': instance.jobsList.map((e) => e.toJson()).toList(),
    };
