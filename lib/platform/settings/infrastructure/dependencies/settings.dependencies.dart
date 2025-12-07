import 'package:get_it/get_it.dart' show GetIt;

import '../../../../api/client/api_116.swagger.dart' show Api116;
import '../../../../modules/auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../../../shared/application/services/cloudinary/cloudinary.service.port.dart'
    show CloudinaryService;
import '../../../../shared/infrastructure/services/cloudinary/cloudinary.service.dart'
    show CloudinaryServiceImpl;
import '../../application/data-sources/settings.remote.datasource.port.dart'
    show ISettingsRemoteDataSource;
import '../../application/repositories/settings.repository.port.dart' show ISettingsRepository;
import '../../application/usecases/updateavatar.usecase.dart' show UpdateAvatarUseCase;
import '../../application/usecases/updateprofile.usecase.dart' show UpdateProfileUseCase;
import '../../presentation/bloc/updateavatar/updateavatar.bloc.dart' show UpdateAvatarBloc;
import '../../presentation/bloc/updateprofile/updateprofile.bloc.dart' show UpdateProfileBloc;
import '../data-sources/settings.remote.datasource.dart' show SettingsRemoteDataSourceImpl;
import '../repositories/settings.cached.repository.dart' show SettingsCachedRepository;
import '../repositories/settings.remote.repository.dart' show SettingsRemoteRepository;

/// Registers all settings module dependencies.
Future<void> registerSettingsDependencies(GetIt sl) async {
  // Services
  sl.registerSingleton<CloudinaryService>(CloudinaryServiceImpl());

  // Data sources
  sl.registerSingleton<ISettingsRemoteDataSource>(
    SettingsRemoteDataSourceImpl(sl<Api116>()),
  );

  // Repository (decorator pattern: cached wraps remote)
  sl.registerSingleton<SettingsRemoteRepository>(
    SettingsRemoteRepository(sl<ISettingsRemoteDataSource>()),
  );
  sl.registerSingleton<ISettingsRepository>(
    SettingsCachedRepository(sl<SettingsRemoteRepository>(), sl<IAuthLocalDataSource>()),
  );

  // Use cases
  sl.registerFactory<UpdateProfileUseCase>(
    () => UpdateProfileUseCase(sl<ISettingsRepository>()),
  );
  sl.registerFactory<UpdateAvatarUseCase>(
    () => UpdateAvatarUseCase(sl<CloudinaryService>(), sl<ISettingsRepository>()),
  );

  // BLoCs
  sl.registerFactory<UpdateProfileBloc>(
    () => UpdateProfileBloc(sl<UpdateProfileUseCase>()),
  );
  sl.registerFactory<UpdateAvatarBloc>(
    () => UpdateAvatarBloc(sl<UpdateAvatarUseCase>()),
  );
}

