import 'dart:async' show Stream, StreamController;

import 'package:hive_ce/hive.dart';

import '../../../../i18n/strings.g.dart' show t;
import '../../../../shared/infrastructure/exceptions/local/readfailed.cache.exception.dart'
    show ReadFailedCacheException;
import '../../../../shared/infrastructure/exceptions/local/writefailed.cache.exception.dart'
    show WriteFailedCacheException;
import '../../application/data-sources/session.local.datasource.port.dart'
    show ISessionLocalDataSource;
import '../constants/hive.constants.dart' show kSessionStateKey;
import '../models/hive/session.state.model.dart' show SessionStateModel;

/// Local data source implementation for session operations using Hive.
///
/// Concrete implementation that manages session state in Hive local storage.
/// Handles persistence of onboarding, preferences, and auth status. Throws
/// cache exceptions that will be converted to failures by the repository.
class SessionLocalDataSource implements ISessionLocalDataSource {
  final Box<dynamic> _sessionBox;
  final StreamController<SessionStateModel> _sessionController;

  SessionLocalDataSource(this._sessionBox)
    : _sessionController = StreamController<SessionStateModel>.broadcast();

  @override
  Future<SessionStateModel?> getSessionState() async {
    try {
      return _sessionBox.get(kSessionStateKey) as SessionStateModel?;
    } catch (e) {
      throw ReadFailedCacheException(
        instance: 'SessionLocalDataSource.getSessionState',
        detail: t.session.cacheError.getSession(error: e.toString()),
      );
    }
  }

  @override
  Future<void> setSessionState(SessionStateModel state) async {
    try {
      await _sessionBox.put(kSessionStateKey, state);
      _sessionController.add(state);
    } catch (e) {
      throw WriteFailedCacheException(
        instance: 'SessionLocalDataSource.setSessionState',
        detail: t.session.cacheError.setSession(error: e.toString()),
      );
    }
  }

  @override
  Future<void> clearSessionState() async {
    try {
      await _sessionBox.delete(kSessionStateKey);
      _sessionController.add(SessionStateModel.initial());
    } catch (e) {
      throw WriteFailedCacheException(
        instance: 'SessionLocalDataSource.clearSessionState',
        detail: t.session.cacheError.clearSession(error: e.toString()),
      );
    }
  }

  @override
  Stream<SessionStateModel> watchSessionState() {
    return _sessionController.stream;
  }

  /// Disposes the stream controller.
  ///
  /// Should be called when the datasource is no longer needed.
  void dispose() {
    _sessionController.close();
  }
}
