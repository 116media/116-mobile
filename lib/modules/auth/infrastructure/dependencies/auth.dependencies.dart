import 'package:get_it/get_it.dart' show GetIt;
import 'package:hive_ce/hive.dart' show Box, Hive;

import '../../../../api/client/api_116.swagger.dart' show Api116;
import '../../application/data-sources/auth.local.datasource.port.dart' show IAuthLocalDataSource;
import '../../application/data-sources/auth.remote.datasource.port.dart' show IAuthRemoteDataSource;
import '../../application/repositories/auth.repository.port.dart' show IAuthRepository;
import '../../application/usecases/forgotpassword.usecase.dart' show ForgotPasswordUseCase;
import '../../application/usecases/resendotp.usecase.dart' show ResendOtpUseCase;
import '../../application/usecases/resetpassword.usecase.dart' show ResetPasswordUseCase;
import '../../application/usecases/signin.usecase.dart' show SignInUseCase;
import '../../application/usecases/signup.usecase.dart' show SignUpUseCase;
import '../../application/usecases/verifyotp.usecase.dart' show VerifyOtpUseCase;
import '../../presentation/bloc/forgotpassword/forgotpassword.bloc.dart' show ForgotPasswordBloc;
import '../../presentation/bloc/resendotp/resendotp.bloc.dart' show ResendOtpBloc;
import '../../presentation/bloc/resetpassword/resetpassword.bloc.dart' show ResetPasswordBloc;
import '../../presentation/bloc/signin/signin.bloc.dart' show SignInBloc;
import '../../presentation/bloc/signup/signup.bloc.dart' show SignUpBloc;
import '../../presentation/bloc/verifyotp/verifyotp.bloc.dart' show VerifyOtpBloc;
import '../constants/hive.constants.dart' show kAuthBox;
import '../data-sources/auth.local.datasource.dart' show AuthLocalDataSource;
import '../data-sources/auth.remote.datasource.dart' show AuthRemoteDataSourceImpl;
import '../repositories/auth.cached.repository.dart' show AuthCachedRepository;
import '../repositories/auth.remote.repository.dart' show AuthRemoteRepository;

/// Registers all authentication module dependencies.
Future<void> registerAuthDependencies(GetIt sl) async {
  // Hive box
  final authBox = await Hive.openBox<dynamic>(kAuthBox);
  sl.registerSingleton<Box<dynamic>>(authBox, instanceName: kAuthBox);

  // Data sources
  sl.registerSingleton<IAuthLocalDataSource>(
    AuthLocalDataSource(sl<Box<dynamic>>(instanceName: kAuthBox)),
  );
  sl.registerSingleton<IAuthRemoteDataSource>(AuthRemoteDataSourceImpl(sl<Api116>()));

  // Repository (decorator pattern: cached wraps remote)
  sl.registerSingleton<AuthRemoteRepository>(AuthRemoteRepository(sl<IAuthRemoteDataSource>()));
  sl.registerSingleton<IAuthRepository>(
    AuthCachedRepository(sl<AuthRemoteRepository>(), sl<IAuthLocalDataSource>()),
  );

  // Use cases
  sl.registerFactory<SignInUseCase>(() => SignInUseCase(sl<IAuthRepository>()));
  sl.registerFactory<SignUpUseCase>(() => SignUpUseCase(sl<IAuthRepository>()));
  sl.registerFactory<VerifyOtpUseCase>(() => VerifyOtpUseCase(sl<IAuthRepository>()));
  sl.registerFactory<ResendOtpUseCase>(() => ResendOtpUseCase(sl<IAuthRepository>()));
  sl.registerFactory<ForgotPasswordUseCase>(() => ForgotPasswordUseCase(sl<IAuthRepository>()));
  sl.registerFactory<ResetPasswordUseCase>(() => ResetPasswordUseCase(sl<IAuthRepository>()));

  // BLoCs
  sl.registerFactory<SignInBloc>(() => SignInBloc(sl<SignInUseCase>()));
  sl.registerFactory<SignUpBloc>(() => SignUpBloc(sl<SignUpUseCase>()));
  sl.registerFactory<VerifyOtpBloc>(() => VerifyOtpBloc(sl<VerifyOtpUseCase>()));
  sl.registerFactory<ResendOtpBloc>(() => ResendOtpBloc(sl<ResendOtpUseCase>()));
  sl.registerFactory<ForgotPasswordBloc>(() => ForgotPasswordBloc(sl<ForgotPasswordUseCase>()));
  sl.registerFactory<ResetPasswordBloc>(() => ResetPasswordBloc(sl<ResetPasswordUseCase>()));
}
