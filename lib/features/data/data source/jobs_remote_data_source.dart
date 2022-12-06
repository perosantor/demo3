import '../../../core/networking/network_request/network_request.dart';
import '../../../core/networking/network_request/network_request_body.dart';
import '../../../core/networking/network_response/network_response.dart';
import '../../../core/networking/network_service.dart';
import '../../../core/utils/constants.dart';
import '../response/jobs_list_response.dart';

abstract class JobsRemoteDataSourceI {
  Future<NetworkResponse<JobsListResponse>> fetchJobs();
}

class JobsRemoteDataSource implements JobsRemoteDataSourceI {
  NetworkService networkService;

  JobsRemoteDataSource({required this.networkService});

  @override
  Future<NetworkResponse<JobsListResponse>> fetchJobs() async {
    const NetworkRequest photoListRequest = NetworkRequest(
      type: NetworkRequestType.get,
      path: Endpoint.jobs,
      data: NetworkRequestBody.json({}),
    );

    final NetworkResponse<JobsListResponse> response = await networkService.execute(
      photoListRequest,
      JobsListResponse.fromJson,
    );
    return response;
  }
}