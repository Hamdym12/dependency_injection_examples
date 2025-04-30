import 'package:dependency_injection/with_di/di_with_service_locater.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void setupServiceLocate(){
  sl.registerLazySingleton(()=>CounterClass());
}