import 'package:blocpersondetails/application/home/home_bloc.dart';
import 'package:blocpersondetails/infrastructure/home%20page/homerepository.dart';
import 'package:get_it/get_it.dart';

import '../../repositery/home_repository.dart';

final sl = GetIt.instance;

Future<void> getDep() async {
  sl.registerFactory(() => HomeBloc(sl()));
  sl.registerLazySingleton<HomeRepository>(() => HomeRepo());
}
