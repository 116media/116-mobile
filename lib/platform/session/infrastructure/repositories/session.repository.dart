import 'package:fpdart/fpdart.dart' show Either, Left, Right;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/exceptions/problem.mapper.g.dart' show ProblemMapper;
import '../../application/datasource/session.local.datasource.port.dart'
    show ISessionLocalDataSource;
import '../../application/repositories/session.repository.port.dart' show ISessionRepository;
import '../../domain/entities/session.state.entity.dart' show SessionStateEntity;
import '../../domain/enums/auth.status.enum.dart' show AuthStatus;
import '../models/hive/session.state.model.dart' show SessionStateModel;

/// Implementation of session repository.
///
/// Delegates to the local datasource, handles entity/model conversion,
/// and converts cache exceptions to failures.
class SessionRepository implements ISessionRepository {
  final ISessionLocalDataSource _localDataSource;

  const SessionRepository(this._localDataSource);

  @override
  Future<Either<Failure, SessionStateEntity>> getSessionState() async {
    try {
      final model = await _localDataSource.getSessionState();
      // If no session exists, return initial state
      final sessionModel = model ?? SessionStateModel.initial();
      return Right(sessionModel.toEntity());
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, SessionStateEntity>> updateOnboardingStatus(bool completed) async {
    try {
      // Get current state
      final currentModel = await _localDataSource.getSessionState() ?? SessionStateModel.initial();
      final currentEntity = currentModel.toEntity();

      // Update onboarding status
      final updatedEntity = currentEntity.copyWith(hasCompletedOnboarding: completed);
      final updatedModel = SessionStateModel.fromEntity(updatedEntity);

      // Save and return
      await _localDataSource.saveSessionState(updatedModel);
      return Right(updatedEntity);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }

  @override
  Future<Either<Failure, SessionStateEntity>> updatePreferencesStatus(bool completed) async {
    try {
      // Get current state
      final currentModel = await _localDataSource.getSessionState() ?? SessionStateModel.initial();
      final currentEntity = currentModel.toEntity();

      // Update preferences status
      final updatedEntity = currentEntity.copyWith(hasSetPreferences: completed);
      final updatedModel = SessionStateModel.fromEntity(updatedEntity);

      // Save and return
      await _localDataSource.saveSessionState(updatedModel);
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
      // Get current state
      final currentModel = await _localDataSource.getSessionState() ?? SessionStateModel.initial();
      final currentEntity = currentModel.toEntity();

      // Update auth status
      final updatedEntity = currentEntity.copyWith(authStatus: status, userId: userId);
      final updatedModel = SessionStateModel.fromEntity(updatedEntity);

      // Save and return
      await _localDataSource.saveSessionState(updatedModel);
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
