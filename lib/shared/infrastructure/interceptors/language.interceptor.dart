import 'dart:async' show FutureOr;
import 'package:chopper/chopper.dart';

import '../../../platform/preferences/application/data-sources/preferences.local.datasource.port.dart'
    show IPreferencesLocalDataSource;
import '../../domain/enums/language.enum.dart' show Language;

/// Interceptor that adds Accept-Language header to all API requests.
///
/// Retrieves the current language from user preferences via [IPreferencesLocalDataSource.getPreferences]
/// and adds it as an Accept-Language header for backend localization.
class LanguageInterceptor implements Interceptor {
  final IPreferencesLocalDataSource _preferencesDataSource;

  LanguageInterceptor(this._preferencesDataSource);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final request = chain.request;

    try {
      final preferences = await _preferencesDataSource.getPreferences();

      if (preferences != null && preferences.languageCode.isNotEmpty) {
        final updatedRequest = applyHeader(request, 'Accept-Language', preferences.languageCode);
        return chain.proceed(updatedRequest);
      }

      // Default to English if no preference is set
      final updatedRequest = applyHeader(request, 'Accept-Language', Language.english.code);
      return chain.proceed(updatedRequest);
    } catch (_) {
      // If preference retrieval fails, use default English
      final updatedRequest = applyHeader(request, 'Accept-Language', Language.english.code);
      return chain.proceed(updatedRequest);
    }
  }
}
