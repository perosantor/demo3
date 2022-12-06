import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/repository/jobs_repository.dart';
import '../../domain/entity/job_entity.dart';
import 'jobs_list_event.dart';

part 'jobs_list_state.dart';

const throttleDuration = Duration(milliseconds: 100);

class JobsListBloc extends Bloc<JobsListEvent, JobsListState> {
  final JobsRepositoryI repository;

  JobsListBloc({required this.repository})
      : super(
          const JobsListState(jobList: []),
        ) {
    on<JobsListFetched>(_onJobsListFetched);
  }

  Future<void> _onJobsListFetched(JobsListFetched event, Emitter<JobsListState> emit) async {
    try {
      final jobList = await repository.fetchJobs();
      return emit(
        state.copyWith(
          status: PhotoListStatus.success,
          jobList: jobList,
          hasReachedMax: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: PhotoListStatus.failure));
    }
  }
}
