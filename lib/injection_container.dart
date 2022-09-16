import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mms_assignment/core/network/network_info.dart';
import 'package:mms_assignment/features/homepage/data/datasources/homepage_remote_data_source.dart';
import 'package:mms_assignment/features/homepage/data/repositories/homepage_repository_impl.dart';
import 'package:mms_assignment/features/homepage/domain/repositories/homepage_repository.dart';
import 'package:mms_assignment/features/homepage/domain/usecases/get_homepage_data_use_case.dart';
import 'package:mms_assignment/features/homepage/presentation/bloc/homepage_bloc.dart';

final sl = GetIt.instance;

void init() {
  //! Features - Stock Scan Parser
  //Bloc
  sl.registerFactory(
    () => HomepageBloc(
      getHomepageDataUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetHomepageDataUseCase(repository: sl()));

  // repository
  sl.registerLazySingleton<HomepageRepository>(
    () => HomepageRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  // Data sources
  sl.registerLazySingleton<HomepageRemoteDataSource>(
    () => HomepageRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  // External
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton(() => http.Client());
}
