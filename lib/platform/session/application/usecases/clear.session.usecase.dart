import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/session-state/session.state.entity.dart' show SessionStateEntity;
import '../repositories/session.state.repository.port.dart' show ISessionStateRepository;

/// Use case for clearing session data (signout).
///
/// Resets the session to initial state, removing authentication and
/// setting status to guest. Used during signout flow.
class ClearSessionUseCase implements IUseCase<void, SessionStateEntity> {
  final ISessionStateRepository _repository;

  const ClearSessionUseCase(this._repository);

  @override
  Future<Either<Failure, SessionStateEntity>> execute(void request) async {
    return await _repository.clearSession();
  }
}
