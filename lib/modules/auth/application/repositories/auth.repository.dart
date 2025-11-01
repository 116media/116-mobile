import 'package:fpdart/fpdart.dart' show Either;

import '../../../../core/domain/failures/failure.dart' show Failure;
import '../../domain/entities/auth.response.entity.dart' show AuthResponseEntity;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;

/// Repository port (interface) for authentication operations.
///
/// Defines the contract for authentication data access. Following the
/// Ports & Adapters architecture pattern, this port is implemented by
/// infrastructure layer adapters. This abstraction allows the application
/// layer to remain independent of specific data sources (REST API, mock, etc.).
///
/// Returns [Either<Failure, T>] where Left contains failures and Right contains success data.
abstract class IAuthRepository {
  /// Authenticates a user using the [SignInCredentialsModel].
  ///
  /// Returns [Right] with [AuthResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, AuthResponseEntity>> signIn(SignInCredentialsModel credentials);

  /// Registers a new user account using the [SignUpCredentialsModel].
  ///
  /// Returns [Right] with [AuthResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, AuthResponseEntity>> signUp(SignUpCredentialsModel credentials);
}
