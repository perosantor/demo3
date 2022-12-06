part of 'jobs_list_bloc.dart';

enum PhotoListStatus {
  initial,
  success,
  failure,
}

class JobsListState extends Equatable {
  final PhotoListStatus status;
  final List<JobEntity> jobList;
  final bool hasReachedMax;

  const JobsListState({
    this.status = PhotoListStatus.initial,
    this.jobList = const <JobEntity>[],
    this.hasReachedMax = false,
  });

  JobsListState copyWith({
    PhotoListStatus? status,
    List<JobEntity>? jobList,
    bool? hasReachedMax,
  }) {
    return JobsListState(
      status: status ?? this.status,
      jobList: jobList ?? this.jobList,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return '''JobsListState { status: $status, hasReachedMax: $hasReachedMax, jobList: ${jobList.length} }''';
  }

  @override
  List<Object> get props => [status, jobList, hasReachedMax];
}
