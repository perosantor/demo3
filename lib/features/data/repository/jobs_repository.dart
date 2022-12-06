import '../../domain/entity/job_entity.dart';
import '../data source/jobs_remote_data_source.dart';
import '../response/job_response.dart';

abstract class JobsRepositoryI {
  Future<List<JobEntity>> fetchJobs();
}

class JobsRepository implements JobsRepositoryI {
  JobsRemoteDataSourceI dataSource;

  JobsRepository({required this.dataSource});

  @override
  Future<List<JobEntity>> fetchJobs() async {
    final response = await dataSource.fetchJobs();
    return response.maybeWhen(
      ok: (data) {
        List<JobEntity> jobs = [];
        for (JobResponse e in data.jobsList) {
          jobs.add(JobEntity.fromJobResponse(e));
        }
        return jobs;
      },
      orElse: () {
        //TODO: error handling
        return [];
      },
    );
  }
}

