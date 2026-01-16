import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' show FacebookAuth;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:google_sign_in/google_sign_in.dart' show GoogleSignIn;

import '../../../../api/client/api_116.swagger.dart' show Api116;
import '../../../../platform/session/application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;
import '../../../../platform/session/application/usecases/update.auth.status.usecase.dart'
    show UpdateAuthStatusUseCase;
import '../../application/data-sources/auth.local.datasource.port.dart' show IAuthLocalDataSource;
import '../../application/data-sources/auth.remote.datasource.port.dart' show IAuthRemoteDataSource;
import '../../application/data-sources/facebook.auth.datasource.port.dart'
    show IFacebookAuthDataSource;
import '../../application/data-sources/google.auth.datasource.port.dart' show IGoogleAuthDataSource;
import '../../application/repositories/auth.cached.repository.port.dart' show IAuthCachedRepository;
import '../../application/repositories/auth.local.repository.port.dart' show IAuthLocalRepository;
import '../../application/repositories/auth.transient.repository.port.dart'
    show IAuthTransientRepository;
import '../../application/usecases/clear.local.user.data.usecase.dart'
    show ClearLocalUserDataUseCase;
import '../../application/usecases/facebooksignin.usecase.dart' show FacebookSignInUseCase;
import '../../application/usecases/forgotpassword.usecase.dart' show ForgotPasswordUseCase;
import '../../application/usecases/googlesignin.usecase.dart' show GoogleSignInUseCase;
import '../../application/usecases/resendotp.usecase.dart' show ResendOtpUseCase;
import '../../application/usecases/resetpassword.usecase.dart' show ResetPasswordUseCase;
import '../../application/usecases/signin.usecase.dart' show SignInUseCase;
import '../../application/usecases/signout.usecase.dart' show SignOutUseCase;
import '../../application/usecases/signup.usecase.dart' show SignUpUseCase;
import '../../application/usecases/verifyotp.usecase.dart' show VerifyOtpUseCase;
import '../../presentation/bloc/facebooksignin/facebooksignin.bloc.dart' show FacebookSignInBloc;
import '../../presentation/bloc/forgotpassword/forgotpassword.bloc.dart' show ForgotPasswordBloc;
import '../../presentation/bloc/googlesignin/googlesignin.bloc.dart' show GoogleSignInBloc;
import '../../presentation/bloc/resendotp/resendotp.bloc.dart' show ResendOtpBloc;
import '../../presentation/bloc/resetpassword/resetpassword.bloc.dart' show ResetPasswordBloc;
import '../../presentation/bloc/signin/signin.bloc.dart' show SignInBloc;
import '../../presentation/bloc/signout/signout.bloc.dart' show SignOutBloc;
import '../../presentation/bloc/signup/signup.bloc.dart' show SignUpBloc;
import '../../presentation/bloc/verifyotp/verifyotp.bloc.dart' show VerifyOtpBloc;
import '../data-sources/auth.remote.datasource.dart' show AuthRemoteDataSource;
import '../data-sources/facebook.auth.datasource.dart' show FacebookAuthDataSource;
import '../data-sources/google.auth.datasource.dart' show GoogleAuthDataSource;
import '../repositories/auth.cached.repository.dart' show AuthCachedRepository;
import '../repositories/auth.remote.repository.dart' show AuthRemoteRepository;

/// Registers all authentication module dependencies.
///
/// Note: Auth box and local datasource are already registered in ServiceLocator
/// before Chopper client initialization (needed for AuthInterceptor).
Future<void> registerAuthDependencies(GetIt sl) async {
  // Data sources (auth local datasource already registered in ServiceLocator)
  sl.registerSingleton<IAuthRemoteDataSource>(AuthRemoteDataSource(sl<Api116>()));
  sl.registerSingleton<IGoogleAuthDataSource>(GoogleAuthDataSource(GoogleSignIn.instance));
  sl.registerSingleton<IFacebookAuthDataSource>(FacebookAuthDataSource(FacebookAuth.instance));

  // Repositories
  // Register remote repository (implements both cacheable and transient operations)
  final authRemoteRepository = AuthRemoteRepository(
    sl<IAuthRemoteDataSource>(),
    sl<IGoogleAuthDataSource>(),
    sl<IFacebookAuthDataSource>(),
    sl<ISessionTokenSecureDataSource>(),
  );

  // Register cached repository (wraps remote for cacheable ops, implements local ops)
  // AuthCachedRepository only implements IAuthCachedRepository and IAuthLocalRepository
  // It delegates to the remote repository for cacheable operations and adds caching
  final authCachedRepository = AuthCachedRepository(
    authRemoteRepository,
    sl<IAuthLocalDataSource>(),
    sl<ISessionTokenSecureDataSource>(),
  );

  // Register interfaces
  // Transient operations -> use remote repository directly (no caching needed)
  sl.registerSingleton<IAuthTransientRepository>(authRemoteRepository);

  // Cacheable operations -> use cached repository (adds caching layer)
  sl.registerSingleton<IAuthCachedRepository>(authCachedRepository);

  // Local operations -> use cached repository
  sl.registerSingleton<IAuthLocalRepository>(authCachedRepository);

  // Combined interface -> not used directly, here for backward compatibility if needed
  // Note: IAuthRepository can't be fully satisfied by a single implementation anymore
  // Use specific interfaces (IAuthCachedRepository, IAuthTransientRepository, IAuthLocalRepository)

  // Use cases
  // Cacheable operations - use cached repository for caching
  sl.registerFactory<SignInUseCase>(() => SignInUseCase(sl<IAuthCachedRepository>()));
  sl.registerFactory<SignUpUseCase>(() => SignUpUseCase(sl<IAuthCachedRepository>()));
  sl.registerFactory<VerifyOtpUseCase>(() => VerifyOtpUseCase(sl<IAuthCachedRepository>()));
  sl.registerFactory<GoogleSignInUseCase>(() => GoogleSignInUseCase(sl<IAuthCachedRepository>()));
  sl.registerFactory<FacebookSignInUseCase>(
    () => FacebookSignInUseCase(sl<IAuthCachedRepository>()),
  );
  sl.registerFactory<SignOutUseCase>(() => SignOutUseCase(sl<IAuthCachedRepository>()));

  // Transient operations - use remote repository directly (no caching)
  sl.registerFactory<ResendOtpUseCase>(() => ResendOtpUseCase(sl<IAuthTransientRepository>()));
  sl.registerFactory<ForgotPasswordUseCase>(
    () => ForgotPasswordUseCase(sl<IAuthTransientRepository>()),
  );
  sl.registerFactory<ResetPasswordUseCase>(
    () => ResetPasswordUseCase(sl<IAuthTransientRepository>()),
  );

  // Local operations - use cached repository
  sl.registerFactory<ClearLocalUserDataUseCase>(
    () => ClearLocalUserDataUseCase(sl<IAuthLocalRepository>()),
  );

  // BLoCs
  sl.registerFactory<SignInBloc>(
    () => SignInBloc(sl<SignInUseCase>(), sl<UpdateAuthStatusUseCase>()),
  );
  sl.registerFactory<SignUpBloc>(
    () => SignUpBloc(sl<SignUpUseCase>(), sl<UpdateAuthStatusUseCase>()),
  );
  sl.registerFactory<VerifyOtpBloc>(
    () => VerifyOtpBloc(sl<VerifyOtpUseCase>(), sl<UpdateAuthStatusUseCase>()),
  );
  sl.registerFactory<ResendOtpBloc>(() => ResendOtpBloc(sl<ResendOtpUseCase>()));
  sl.registerFactory<ForgotPasswordBloc>(() => ForgotPasswordBloc(sl<ForgotPasswordUseCase>()));
  sl.registerFactory<ResetPasswordBloc>(() => ResetPasswordBloc(sl<ResetPasswordUseCase>()));
  sl.registerFactory<GoogleSignInBloc>(
    () => GoogleSignInBloc(sl<GoogleSignInUseCase>(), sl<UpdateAuthStatusUseCase>()),
  );
  sl.registerFactory<FacebookSignInBloc>(
    () => FacebookSignInBloc(sl<FacebookSignInUseCase>(), sl<UpdateAuthStatusUseCase>()),
  );
  sl.registerFactory<SignOutBloc>(
    () => SignOutBloc(sl<SignOutUseCase>(), sl<UpdateAuthStatusUseCase>()),
  );
}
