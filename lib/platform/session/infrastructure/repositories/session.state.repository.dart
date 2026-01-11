import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/session.state.local.datasource.port.dart'
    show ISessionStateLocalDataSource;
import '../../application/repositories/session.state.repository.port.dart'
    show ISessionStateRepository;
import '../../domain/entities/session-state/session.state.entity.dart' show SessionStateEntity;
import '../../domain/enums/auth.status.enum.dart' show AuthStatus;
import '../models/hive/session.state.model.dart' show SessionStateModel;

/// Implementation of session repository.
///
/// Delegates to the local datasource, handles entity/model conversion,
/// and converts cache exceptions to failures.
class SessionStateRepository implements ISessionStateRepository {
  final ISessionStateLocalDataSource _localDataSource;

  const SessionStateRepository(this._localDataSource);

  @override
  Future<Either<Failure, SessionStateEntity>> getSessionState() async {
    try {
      final model = await _localDataSource.getSessionState();
      // If no session exists, return initial state
      final session = model ?? SessionStateModel.initial();
      return Right(session.toEntity());
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, SessionStateEntity>> updateOnboardingStatus(bool completed) async {
    try {
      // Get current state
      final current = await _localDataSource.getSessionState() ?? SessionStateModel.initial();

      // Update onboarding status
      final updatedEntity = current.toEntity().copyWith(hasCompletedOnboarding: completed);
      final updatedModel = SessionStateModel.fromEntity(updatedEntity);

      // Save and return
      await _localDataSource.setSessionState(updatedModel);
      return Right(updatedEntity);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, SessionStateEntity>> updatePreferencesStatus(bool completed) async {
    try {
      // Get current state
      final current = await _localDataSource.getSessionState() ?? SessionStateModel.initial();

      // Update preferences status
      final updatedEntity = current.toEntity().copyWith(hasSetPreferences: completed);
      final updatedModel = SessionStateModel.fromEntity(updatedEntity);

      // Save and return
      await _localDataSource.setSessionState(updatedModel);
      return Right(updatedEntity);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, SessionStateEntity>> updateAuthStatus(
    AuthStatus status,
    String? userId,
  ) async {
    try {
      final current = await _localDataSource.getSessionState() ?? SessionStateModel.initial();
      final currentEntity = current.toEntity();

      final updatedEntity = switch ((status, userId)) {
        (AuthStatus.guest, _) => currentEntity.copyWith(authStatus: status, userId: null),
        (_, String userId) => currentEntity.copyWith(authStatus: status, userId: userId),
        (_, null) => currentEntity.copyWith(authStatus: status),
      };

      final updatedModel = SessionStateModel.fromEntity(updatedEntity);

      await _localDataSource.setSessionState(updatedModel);
      return Right(updatedEntity);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, SessionStateEntity>> clearSession() async {
    try {
      await _localDataSource.clearSessionState();
      // Return initial guest state
      return Right(SessionStateModel.initial().toEntity());
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Stream<SessionStateEntity> get onSessionChange {
    return _localDataSource.watchSessionState().map((model) => model.toEntity());
  }
}
