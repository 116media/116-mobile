import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/settings.remote.datasource.port.dart'
    show ISettingsRemoteDataSource;
import '../../application/repositories/settings.repository.port.dart' show ISettingsRepository;
import '../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;
import '../../presentation/models/profile.model.dart' show ProfileModel;
import '../mappers/settings.mapper.dart' show SettingsMapper;

/// Remote settings repository implementation.
///
/// Handles remote API calls for profile updates and DTO-to-entity mapping.
/// Part of the infrastructure layer in Clean Architecture.
class SettingsRemoteRepository implements ISettingsRepository {
  final ISettingsRemoteDataSource _remoteDataSource;

  const SettingsRemoteRepository(this._remoteDataSource);

  @override
  Future<Either<Failure, ProfileResponseEntity>> updateProfile(ProfileModel profile) async {
    try {
      final response = await _remoteDataSource.updateProfile(profile);
      final profileEntity = SettingsMapper.profileResponseFromDto(response);
      return Right(profileEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, ProfileResponseEntity>> updateAvatar(String avatarUrl) async {
    try {
      final response = await _remoteDataSource.updateAvatar(avatarUrl);
      final profileEntity = SettingsMapper.avatarResponseFromDto(response);
      return Right(profileEntity);
    } on ServerException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }
}