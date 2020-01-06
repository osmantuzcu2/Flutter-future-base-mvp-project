import 'package:get_it/get_it.dart';
import 'home/service/home_service.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(()=> ApiService());
}