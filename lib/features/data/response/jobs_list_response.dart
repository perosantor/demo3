import 'dart:core';
import 'package:demo3/features/data/response/job_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobs_list_response.freezed.dart';
part 'jobs_list_response.g.dart';

//ignore_for_file: invalid_annotation_target

@freezed
class JobsListResponse with _$JobsListResponse {
  @JsonSerializable(explicitToJson: true)
  const factory JobsListResponse({
    required List<JobResponse> jobsList,
  }) = _JobsListResponse;

  factory JobsListResponse.fromJson(Map<String, dynamic> json) => _$JobsListResponseFromJson(json);
}