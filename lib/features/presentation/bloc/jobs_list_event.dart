import 'package:demo3/features/domain/entity/job_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobs_list_event.freezed.dart';

@freezed
class JobsListEvent with _$JobsListEvent {
  const factory JobsListEvent.jobsListFetched() = JobsListFetched;
  const factory JobsListEvent.jobsListUpdated({required JobEntity updatedJob}) = JobsListUpdated;
}