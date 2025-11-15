import 'dart:async' show StreamController;

import 'package:hive_ce/hive.dart' show Box;

import '../../../../shared/infrastructure/exceptions/local/readfailed.cache.exception.dart'
    show ReadFailedCacheException;
import '../../../../shared/infrastructure/exceptions/local/writefailed.cache.exception.dart'
    show WriteFailedCacheException;
import '../../application/datasource/preferences.local.datasource.port.dart'
    show IPreferencesLocalDataSource;
import '../constants/hive.constants.dart' show kPreferencesKey;
import '../models/hive/user.preferences.model.dart' show UserPreferencesModel;

/// Local data source implementation for preferences operations using Hive.
///
/// Concrete implementation that manages user preferences in Hive local storage.
/// Handles persistence of language and theme preferences. Throws cache exceptions
/// that will be converted to failures by the repository.
class PreferencesLocalDataSource implements IPreferencesLocalDataSource {
  final Box<dynamic> _preferencesBox;
  final StreamController<UserPreferencesModel> _preferencesController;

  PreferencesLocalDataSource(this._preferencesBox)
    : _preferencesController = StreamController<UserPreferencesModel>.broadcast();

  @override
  Future<UserPreferencesModel?> getPreferences() async {
    try {
      return _preferencesBox.get(kPreferencesKey) as UserPreferencesModel?;
    } catch (e) {
      throw ReadFailedCacheException(
        detail: 'Failed to retrieve preferences: $e',
        instance: 'PreferencesLocalDataSource.getPreferences',
      );
    }
  }

  @override
  Future<void> setPreferences(UserPreferencesModel preferences) async {
    try {
      await _preferencesBox.put(kPreferencesKey, preferences);
      _preferencesController.add(preferences);
    } catch (e) {
      throw WriteFailedCacheException(
        detail: 'Failed to save preferences: $e',
        instance: 'PreferencesLocalDataSource.savePreferences',
      );
    }
  }

  @override
  Future<void> clearPreferences() async {
    try {
      await _preferencesBox.delete(kPreferencesKey);
      _preferencesController.add(UserPreferencesModel.defaults());
    } catch (e) {
      throw WriteFailedCacheException(
        detail: 'Failed to clear preferences: $e',
        instance: 'PreferencesLocalDataSource.clearPreferences',
      );
    }
  }

  @override
  Stream<UserPreferencesModel> watchPreferences() {
    return _preferencesController.stream;
  }

  /// Disposes the stream controller.
  ///
  /// Should be called when the datasource is no longer needed.
  void dispose() {
    _preferencesController.close();
  }
}
