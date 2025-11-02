import 'package:hive/hive.dart';

import '../../../../core/infrastructure/exceptions/local/readfailed.cache.exception.dart'
    show ReadFailedCacheException;
import '../../../../core/infrastructure/exceptions/local/writefailed.cache.exception.dart'
    show WriteFailedCacheException;
import '../../application/datasource/local/auth.local.datasource.dart' show IAuthLocalDataSource;
import '../constants/hive.constants.dart' show kTokenKey, kUserKey;
import '../models/hive/user/user.model.dart' show UserModel;

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
        detail: 'Failed to save user data: $e',
        instance: 'AuthLocalDataSource.setUser',
      );
    }
  }

  @override
  Future<UserModel?> getUser() async {
    try {
      return _authBox.get(kUserKey) as UserModel?;
    } catch (e) {
      throw ReadFailedCacheException(
        detail: 'Failed to retrieve user data: $e',
        instance: 'AuthLocalDataSource.getUser',
      );
    }
  }

  @override
  Future<void> setToken(String token) async {
    try {
      await _authBox.put(kTokenKey, token);
    } catch (e) {
      throw WriteFailedCacheException(
        detail: 'Failed to save token: $e',
        instance: 'AuthLocalDataSource.setToken',
      );
    }
  }

  @override
  Future<String?> getToken() async {
    try {
      return _authBox.get(kTokenKey) as String?;
    } catch (e) {
      throw ReadFailedCacheException(
        detail: 'Failed to retrieve token: $e',
        instance: 'AuthLocalDataSource.getToken',
      );
    }
  }

  @override
  Future<void> clearToken() async {
    try {
      await _authBox.delete(kTokenKey);
    } catch (e) {
      throw WriteFailedCacheException(
        detail: 'Failed to clear token: $e',
        instance: 'AuthLocalDataSource.clearToken',
      );
    }
  }
}
