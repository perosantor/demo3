import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/utils/sorting.dart';
import '../../data/repository/jobs_repository.dart';
import '../../domain/entity/job_entity.dart';
import 'jobs_list_event.dart';

part 'jobs_list_state.dart';

const throttleDuration = Duration(milliseconds: 100);

class JobsListBloc extends Bloc<JobsListEvent, JobsListState> {
  final JobsRepositoryI repository;

  List<JobEntity> defaultJobsList = [];

  List<JobEntity> get allJobsList {
    final allJobsList = defaultJobsList.where((job) => job.status != JobStatus.rejected).toList();
    return sortByDatePosted(allJobsList);
  }

  List<JobEntity> get acceptedJobsList {
    final acceptedJobsList = defaultJobsList.where((job) => job.status == JobStatus.accepted).toList();
    return sortByExpectedDeliveryDate(acceptedJobsList);
  }

  JobsListBloc({required this.repository})
      : super(
          const JobsListState(allJobsList: [], acceptedJobsList: [],)
        ) {
    on<JobsListFetched>(_onJobsListFetched);
    on<JobsListUpdated>(_onJobsListUpdated);
  }

  Future<void> _onJobsListFetched(JobsListFetched event, Emitter<JobsListState> emit) async {
    try {
      defaultJobsList = await repository.fetchJobs();
      return emit(
        state.copyWith(
          status: PhotoListStatus.success,
          all: allJobsList,
          accepted: acceptedJobsList,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: PhotoListStatus.failure));
    }
  }

  Future<void> _onJobsListUpdated(JobsListUpdated event, Emitter<JobsListState> emit) async {
    try {
      final updatedJobList = defaultJobsList.map((job) {
        if (job.id == event.updatedJob.id) {
          return event.updatedJob;
        } else {
          return job;
        }
      }).toList();
      defaultJobsList = updatedJobList;
      return emit(
        state.copyWith(
          status: PhotoListStatus.success,
          all: allJobsList,
          accepted: acceptedJobsList,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: PhotoListStatus.failure));
    }
  }
}
