import 'package:chopper/chopper.dart' show ChopperClient;
import 'package:get_it/get_it.dart' show GetIt;
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
import '../../platform/device-info/application/data-sources/device.info.datasource.port.dart'
    show IDeviceInfoDataSource;
import '../../platform/device-info/infrastructure/dependencies/device.info.dependencies.dart'
    show registerDeviceInfoDependencies;

import '../../platform/preferences/application/data-sources/preferences.local.datasource.port.dart'
    show IPreferencesLocalDataSource;
import '../../platform/preferences/infrastructure/constants/hive.constants.dart'
    show kPreferencesBox;
import '../../platform/preferences/infrastructure/data-sources/preferences.local.datasource.dart'
    show PreferencesLocalDataSource;
import '../../platform/preferences/infrastructure/dependencies/preferences.dependencies.dart'
    show registerPreferencesDependencies;

import '../../platform/session/application/data-sources/device.secure.datasource.port.dart'
    show IDeviceSecureDataSource;
import '../../platform/session/application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;
import '../../platform/session/infrastructure/dependencies/session.dependencies.dart'
    show registerSessionDependencies;

import '../../platform/settings/infrastructure/dependencies/settings.dependencies.dart'
    show registerSettingsDependencies;

import 'constants/api.constants.dart' show kApiBaseUrl;
import 'interceptors/auth.interceptor.dart' show AuthInterceptor;
import 'interceptors/clientapp.interceptor.dart' show ClientAppInterceptor;
import 'interceptors/deviceid.interceptor.dart' show DeviceIdInterceptor;
import 'interceptors/language.interceptor.dart' show LanguageInterceptor;
import 'interceptors/access.token.expiry.interceptor.dart' show AccessTokenExpiryInterceptor;
import 'interceptors/refresh.token.expiry.interceptor.dart' show RefreshTokenExpiryInterceptor;
import 'interceptors/user.agent.interceptor.dart' show UserAgentInterceptor;

final GetIt sl = GetIt.instance;

/// Centralized dependency injection bootstrapper for the application.
///
/// `ServiceLocator` is responsible for initializing and registering all
/// core infrastructure, platform services, feature modules, and API clients
/// using `GetIt`.
class ServiceLocator {
  ServiceLocator._();

  static Future<void> initialize() async {
    final authBox = await Hive.openBox(kAuthBox);
    sl.registerSingleton<Box>(authBox, instanceName: kAuthBox);
    sl.registerSingleton<IAuthLocalDataSource>(
      AuthLocalDataSource(sl<Box>(instanceName: kAuthBox)),
    );

    final preferencesBox = await Hive.openBox(kPreferencesBox);
    sl.registerSingleton<Box>(preferencesBox, instanceName: kPreferencesBox);
    sl.registerSingleton<IPreferencesLocalDataSource>(
      PreferencesLocalDataSource(sl<Box>(instanceName: kPreferencesBox)),
      dispose: (ds) {
        if (ds is PreferencesLocalDataSource) ds.dispose();
      },
    );

    await registerSessionDependencies(sl);
    await registerDeviceInfoDependencies(sl);

    final chopper = ChopperClient(
      baseUrl: Uri.parse(kApiBaseUrl),
      converter: $JsonSerializableConverter(),
      errorConverter: $JsonSerializableConverter(),
      interceptors: [
        const ClientAppInterceptor(),
        AccessTokenExpiryInterceptor(sl),
        RefreshTokenExpiryInterceptor(sl),
        UserAgentInterceptor(sl<IDeviceInfoDataSource>()),
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
