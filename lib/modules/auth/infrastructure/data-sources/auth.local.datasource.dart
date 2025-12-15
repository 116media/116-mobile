import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../../../shared/infrastructure/exceptions/local/readfailed.cache.exception.dart'
    show ReadFailedCacheException;
import '../../../../shared/infrastructure/exceptions/local/writefailed.cache.exception.dart'
    show WriteFailedCacheException;
import '../../application/data-sources/auth.local.datasource.port.dart' show IAuthLocalDataSource;
import '../constants/hive.constants.dart' show kTokenKey, kUserKey;
import '../models/hive/user/user.model.dart' show UserModel;
import '../../../../i18n/strings.g.dart' show t;

/// Local data source implementation for authentication operations using Hive.
///
/// Concrete implementation that manages authentication-related data in Hive
/// local storage. Handles token and user persistence. Throws cache exceptions
/// that will be converted to failures by the repository using ProblemMapper.toFailure().
class AuthLocalDataSource implements IAuthLocalDataSource {
  final Box<dynamic> _authBox;

  AuthLocalDataSource(this._authBox);

  @override
  Future<void> setUser(UserModel user) async {
    try {
      await _authBox.put(kUserKey, user);
    } catch (e) {
      throw WriteFailedCacheException(
        instance: 'AuthLocalDataSource.setUser',
        detail: t.auth.cacheError.setUser(error: e.toString()),
      );
    }
  }

  @override
  Future<UserModel?> getUser() async {
    try {
      return _authBox.get(kUserKey) as UserModel?;
    } catch (e) {
      throw ReadFailedCacheException(
        instance: 'AuthLocalDataSource.getUser',
        detail: t.auth.cacheError.getUser(error: e.toString()),
      );
    }
  }

  @override
  Future<void> setToken(String token) async {
    try {
      await _authBox.put(kTokenKey, token);
    } catch (e) {
      throw WriteFailedCacheException(
        instance: 'AuthLocalDataSource.setToken',
        detail: t.auth.cacheError.setToken(error: e.toString()),
      );
    }
  }

  @override
  Future<String?> getToken() async {
    try {
      return _authBox.get(kTokenKey) as String?;
    } catch (e) {
      throw ReadFailedCacheException(
        instance: 'AuthLocalDataSource.getToken',
        detail: t.auth.cacheError.getToken(error: e.toString()),
      );
    }
  }

  @override
  Future<void> clearToken() async {
    try {
      await _authBox.delete(kTokenKey);
    } catch (e) {
      throw WriteFailedCacheException(
        instance: 'AuthLocalDataSource.clearToken',
        detail: t.auth.cacheError.clearToken(error: e.toString()),
      );
    }
  }

  @override
  Future<void> clearUser() async {
    try {
      await _authBox.delete(kUserKey);
    } catch (e) {
      throw WriteFailedCacheException(
        instance: 'AuthLocalDataSource.clearUser',
        detail: t.auth.cacheError.clearUser(error: e.toString()),
      );
    }
  }

  @override
  Stream<UserModel?> watchUser() async* {
    try {
      yield _authBox.get(kUserKey) as UserModel?;

      await for (final event in _authBox.watch(key: kUserKey)) {
        yield event.value as UserModel?;
      }
    } catch (e) {
      throw ReadFailedCacheException(
        instance: 'AuthLocalDataSource.watchUser',
        detail: t.auth.cacheError.watchUser(error: e.toString()),
      );
    }
  }
}
