import 'package:get_it/get_it.dart';
import '../features/data/data source/jobs_remote_data_source.dart';
import '../features/data/repository/jobs_repository.dart';
import 'networking/network_service.dart';
import 'package:demo3/core/utils/constants.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton(NetworkService(baseUrl: Url.base));

  locator.registerFactory<JobsRemoteDataSourceI>(
    () => JobsRemoteDataSource(networkService: locator.get<NetworkService>()),
  );

  locator.registerFactory<JobsRepositoryI>(
    () => JobsRepository(dataSource: locator.get<JobsRemoteDataSourceI>()),
  );
}
