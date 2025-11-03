import 'package:fpdart/fpdart.dart' show Either;

import '../../domain/failures/failure.dart' show Failure;

/// Generic use case interface for application layer.
///
/// Base interface for all use cases in the application following Clean
/// Architecture principles. Use cases contain application business logic
/// and orchestrate the flow of data.
///
/// Returns [Either<Failure, TResponse>] where [Left] contains failures
/// and [Right] contains the successful response.
abstract class IUseCase<TRequest, TResponse> {
  /// Executes the use case with the provided request data.
  ///
  /// Returns [Right] with [TResponse] on success, or [Left] with [Failure] on error.
  Future<Either<Failure, TResponse>> execute(TRequest request);
}
