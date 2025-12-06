import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../modules/auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../../../modules/auth/infrastructure/models/hive/user/user.model.dart' show UserModel;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/repositories/settings.repository.port.dart' show ISettingsRepository;
import '../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;
import '../../presentation/models/profile.model.dart' show ProfileModel;

/// Cached settings repository (decorator pattern).
///
/// Wraps the inner repository and adds local caching functionality.
/// Delegates remote operations to the inner repository, then persists
/// successful profile updates to local storage via auth local datasource.
class SettingsCachedRepository implements ISettingsRepository {
  final ISettingsRepository _remoteRepository;
  final IAuthLocalDataSource _localDataSource;

  const SettingsCachedRepository(this._remoteRepository, this._localDataSource);

  @override
  Future<Either<Failure, ProfileResponseEntity>> updateProfile(ProfileModel profile) async {
    final result = await _remoteRepository.updateProfile(profile);

    // Only persist if successful
    return result.fold((failure) => Left(failure), (profileResponse) async {
      try {
        // Update cached user data with the updated profile information
        await _localDataSource.setUser(UserModel.fromEntity(profileResponse.user));
        return Right(profileResponse);
      } on CacheException catch (exception) {
        return Left(ProblemMapper.toFailure(exception));
      }
    });
  }

  @override
  Future<Either<Failure, ProfileResponseEntity>> updateAvatar(String avatarUrl) async {
    final result = await _remoteRepository.updateAvatar(avatarUrl);

    // Only persist if successful
    return result.fold((failure) => Left(failure), (profileResponse) async {
      try {
        // Update cached user data with the updated avatar
        await _localDataSource.setUser(UserModel.fromEntity(profileResponse.user));
        return Right(profileResponse);
      } on CacheException catch (exception) {
        return Left(ProblemMapper.toFailure(exception));
      }
    });
  }
}
