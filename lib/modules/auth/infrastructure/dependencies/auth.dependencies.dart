import 'package:chopper/chopper.dart' show ChopperClient;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:hive/hive.dart' show Box, Hive;

import '../../../../api/client/api_116.swagger.dart' show Api116, $JsonSerializableConverter;
import '../../application/datasource/local/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../application/datasource/remote/auth.remote.datasource.port.dart'
    show IAuthRemoteDataSource;
import '../../application/repositories/auth.repository.port.dart' show IAuthRepository;
import '../../application/usecases/signin.usecase.dart' show SignInUseCase;
import '../../application/usecases/signup.usecase.dart' show SignUpUseCase;
import '../../presentation/bloc/signin/signin.bloc.dart' show SignInBloc;
import '../../presentation/bloc/signup/signup.bloc.dart' show SignUpBloc;
import '../constants/hive.constants.dart' show kAuthBox;
import '../datasources/auth.local.datasource.dart' show AuthLocalDataSource;
import '../datasources/auth.remote.datasource.dart' show AuthRemoteDataSourceImpl;
import '../repositories/auth.repository.impl.dart' show AuthRepository;

/// Registers all authentication module dependencies.
Future<void> registerAuthDependencies(GetIt sl) async {
  // Hive box
  final authBox = await Hive.openBox<dynamic>(kAuthBox);
  sl.registerSingleton<Box<dynamic>>(authBox);

  // API Client
  final chopper = ChopperClient(
    baseUrl: Uri.parse('https://api.116.com'), // TODO: Move to environment config
    converter: $JsonSerializableConverter(),
  );
  sl.registerSingleton<ChopperClient>(chopper);
  sl.registerSingleton<Api116>(Api116.create(client: chopper));

  // Data sources
  sl.registerSingleton<IAuthLocalDataSource>(AuthLocalDataSource(sl<Box<dynamic>>()));
  sl.registerSingleton<IAuthRemoteDataSource>(AuthRemoteDataSourceImpl(sl<Api116>()));

  // Repository
  sl.registerSingleton<IAuthRepository>(
    AuthRepository(sl<IAuthRemoteDataSource>(), sl<IAuthLocalDataSource>()),
  );

  // Use cases
  sl.registerFactory<SignInUseCase>(() => SignInUseCase(sl<IAuthRepository>()));
  sl.registerFactory<SignUpUseCase>(() => SignUpUseCase(sl<IAuthRepository>()));

  // BLoCs
  sl.registerFactory<SignInBloc>(() => SignInBloc(sl<SignInUseCase>()));
  sl.registerFactory<SignUpBloc>(() => SignUpBloc(sl<SignUpUseCase>()));
}
