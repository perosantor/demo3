import 'package:get_it/get_it.dart';
import 'networking/network_service.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton(NetworkService());

}