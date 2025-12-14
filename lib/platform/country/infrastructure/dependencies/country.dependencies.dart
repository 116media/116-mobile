import 'package:get_it/get_it.dart' show GetIt;
import 'package:hive_ce/hive.dart' show Box, Hive;
import 'package:ip_country_lookup/ip_country_lookup.dart' show IpCountryLookup;

import '../../application/data-sources/country.local.datasource.port.dart'
    show ICountryLocalDataSource;
import '../../application/repositories/country.repository.port.dart' show ICountryRepository;
import '../../application/usecases/get.country.usecase.dart' show GetCountryUseCase;
import '../../application/usecases/initialize.country.usecase.dart' show InitializeCountryUseCase;
import '../../application/usecases/watch.country.usecase.dart' show WatchCountryUseCase;
import '../../presentation/bloc/country.bloc.dart' show CountryBloc;
import '../constants/hive.constants.dart' show kCountryBox;
import '../data-sources/country.local.datasource.dart' show CountryLocalDataSource;
import '../data-sources/country.remote.datasource.dart' show CountryRemoteDataSource;
import '../repositories/country.repository.dart' show CountryRepository;

/// Registers all country module dependencies.
Future<void> registerCountryDependencies(GetIt sl) async {
  // Hive box
  final countryBox = await Hive.openBox<dynamic>(kCountryBox);
  sl.registerSingleton<Box<dynamic>>(countryBox, instanceName: kCountryBox);

  // IP Country Lookup
  sl.registerLazySingleton<IpCountryLookup>(() => IpCountryLookup());

  // Data sources
  sl.registerSingleton<ICountryLocalDataSource>(
    CountryLocalDataSource(sl<Box<dynamic>>(instanceName: kCountryBox)),
  );
  sl.registerSingleton<CountryRemoteDataSource>(CountryRemoteDataSource(sl<IpCountryLookup>()));

  // Repository
  sl.registerSingleton<ICountryRepository>(
    CountryRepository(sl<CountryRemoteDataSource>(), sl<ICountryLocalDataSource>()),
  );

  // Use cases
  sl.registerFactory<InitializeCountryUseCase>(
    () => InitializeCountryUseCase(sl<ICountryRepository>()),
  );
  sl.registerFactory<GetCountryUseCase>(() => GetCountryUseCase(sl<ICountryRepository>()));
  sl.registerFactory<WatchCountryUseCase>(() => WatchCountryUseCase(sl<ICountryRepository>()));

  // BLoC
  sl.registerFactory<CountryBloc>(
    () => CountryBloc(sl<GetCountryUseCase>(), sl<WatchCountryUseCase>()),
  );
}
