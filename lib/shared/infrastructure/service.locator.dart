import 'package:get_it/get_it.dart' show GetIt;
import 'package:chopper/chopper.dart' show ChopperClient;
import 'package:hive_ce/hive.dart' show Box, Hive;

import '../../../../api/client/api_116.swagger.dart' show Api116, $JsonSerializableConverter;
import '../../modules/auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../modules/auth/infrastructure/constants/hive.constants.dart' show kAuthBox;
import '../../modules/auth/infrastructure/data-sources/auth.local.datasource.dart'
    show AuthLocalDataSource;
import '../../modules/auth/infrastructure/dependencies/auth.dependencies.dart'
    show registerAuthDependencies;
import '../../platform/connectivity/infrastructure/dependencies/connectivity.dependencies.dart'
    show registerConnectivityDependencies;
import '../../platform/country/infrastructure/dependencies/country.dependencies.dart'
    show registerCountryDependencies;
import '../../platform/preferences/application/data-sources/preferences.local.datasource.port.dart'
    show IPreferencesLocalDataSource;
import '../../platform/preferences/infrastructure/constants/hive.constants.dart'
    show kPreferencesBox;
import '../../platform/preferences/infrastructure/data-sources/preferences.local.datasource.dart'
    show PreferencesLocalDataSource;
import '../../platform/preferences/infrastructure/dependencies/preferences.dependencies.dart'
    show registerPreferencesDependencies;
import '../../platform/session/application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;
import '../../platform/session/infrastructure/dependencies/session.dependencies.dart'
    show registerSessionDependencies;
import '../../platform/settings/infrastructure/dependencies/settings.dependencies.dart'
    show registerSettingsDependencies;
import '../../platform/session/application/data-sources/device.secure.datasource.port.dart'
    show IDeviceSecureDataSource;
import 'constants/api.constants.dart' show kApiBaseUrl;
import 'interceptors/auth.interceptor.dart' show AuthInterceptor;
import 'interceptors/clientapp.interceptor.dart' show ClientAppInterceptor;
import 'interceptors/deviceid.interceptor.dart' show DeviceIdInterceptor;
import 'interceptors/language.interceptor.dart' show LanguageInterceptor;

/// Service locator for dependency injection.
///
/// Access dependencies using: `sl<ConnectivityBloc>()`
final GetIt sl = GetIt.instance;

class ServiceLocator {
  ServiceLocator._();

  static Future<void> initialize() async {
    // Register auth local datasource first (needed by AuthInterceptor)
    final authBox = await Hive.openBox(kAuthBox);
    sl.registerSingleton<Box>(authBox, instanceName: kAuthBox);
    sl.registerSingleton<IAuthLocalDataSource>(
      AuthLocalDataSource(sl<Box>(instanceName: kAuthBox)),
    );

    // Register preferences local datasource (needed by LanguageInterceptor)
    final preferencesBox = await Hive.openBox(kPreferencesBox);
    sl.registerSingleton<Box>(preferencesBox, instanceName: kPreferencesBox);
    sl.registerSingleton<IPreferencesLocalDataSource>(
      PreferencesLocalDataSource(sl<Box>(instanceName: kPreferencesBox)),
      dispose: (datasource) {
        if (datasource is PreferencesLocalDataSource) {
          datasource.dispose();
        }
      },
    );

    // Register session dependencies early (needed for interceptors)
    await registerSessionDependencies(sl);

    // Create Chopper client with all interceptors
    final chopper = ChopperClient(
      baseUrl: Uri.parse(kApiBaseUrl),
      converter: $JsonSerializableConverter(),
      errorConverter: $JsonSerializableConverter(),
      interceptors: [
        const ClientAppInterceptor(),
        DeviceIdInterceptor(sl<IDeviceSecureDataSource>()),
        AuthInterceptor(sl<ISessionTokenSecureDataSource>()),
        LanguageInterceptor(sl<IPreferencesLocalDataSource>()),
      ],
    );
    sl.registerSingleton<ChopperClient>(chopper);
    sl.registerSingleton<Api116>(Api116.create(client: chopper));

    await registerConnectivityDependencies(sl);
    await registerCountryDependencies(sl);
    await registerPreferencesDependencies(sl);
    await registerAuthDependencies(sl);
    await registerSettingsDependencies(sl);
  }
}
