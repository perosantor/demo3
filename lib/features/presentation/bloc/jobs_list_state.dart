part of 'jobs_list_bloc.dart';

enum PhotoListStatus {
  initial,
  success,
  failure,
}

class JobsListState extends Equatable {
  final PhotoListStatus status;
  final List<JobEntity> allJobsList;
  final List<JobEntity> acceptedJobsList;

  const JobsListState({
    this.status = PhotoListStatus.initial,
    this.allJobsList = const <JobEntity>[],
    this.acceptedJobsList = const <JobEntity>[],
  });

  JobsListState copyWith({
    PhotoListStatus? status,
    List<JobEntity>? all,
    List<JobEntity>? accepted,
  }) {
    return JobsListState(
      status: status ?? this.status,
      allJobsList: all ?? allJobsList,
      acceptedJobsList: accepted ?? acceptedJobsList,
    );
  }

  @override
  String toString() {
    return '''JobsListState { status: $status, allJobList: ${allJobsList.length} }''';
  }

  @override
  List<Object> get props => [status, allJobsList, acceptedJobsList];
}
