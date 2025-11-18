import 'package:get_it/get_it.dart' show GetIt;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    show InternetConnection;

import '../../application/data-sources/connectivity.datasource.port.dart'
    show IConnectivityDataSource;
import '../../application/repositories/connectivity.repository.port.dart'
    show IConnectivityRepository;
import '../../application/usecases/connectivity.watch.usecase.dart' show ConnectivityWatchUseCase;
import '../../presentation/bloc/connectivity.bloc.dart' show ConnectivityBloc;
import '../data-sources/connectivity.datasource.dart' show ConnectivityDataSource;
import '../repositories/connectivity.repository.dart' show ConnectivityRepository;

/// Registers all connectivity module dependencies.
Future<void> registerConnectivityDependencies(GetIt sl) async {
  // Internet connection checker
  sl.registerSingleton<InternetConnection>(InternetConnection());

  // Data source
  sl.registerSingleton<IConnectivityDataSource>(ConnectivityDataSource(sl<InternetConnection>()));

  // Repository
  sl.registerSingleton<IConnectivityRepository>(
    ConnectivityRepository(sl<IConnectivityDataSource>()),
  );

  // Use case
  sl.registerFactory<ConnectivityWatchUseCase>(
    () => ConnectivityWatchUseCase(sl<IConnectivityRepository>()),
  );

  // BLoC
  sl.registerFactory<ConnectivityBloc>(() => ConnectivityBloc(sl<ConnectivityWatchUseCase>()));
}
