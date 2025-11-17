import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/session-state/session.state.entity.dart' show SessionStateEntity;
import '../../domain/enums/auth.status.enum.dart' show AuthStatus;
import '../repositories/session.repository.port.dart' show ISessionRepository;

/// Use case for updating authentication status.
///
/// Updates the user's authentication state (guest, unverified, authenticated)
/// and associated user ID. This determines access control for app features.
///
/// Request: Record with (AuthStatus status, String? userId)
class UpdateAuthStatusUseCase
    implements IUseCase<({AuthStatus status, String? userId}), SessionStateEntity> {
  final ISessionRepository _repository;

  const UpdateAuthStatusUseCase(this._repository);

  @override
  Future<Either<Failure, SessionStateEntity>> execute(
    ({AuthStatus status, String? userId}) request,
  ) async {
    return await _repository.updateAuthStatus(request.status, request.userId);
  }
}
