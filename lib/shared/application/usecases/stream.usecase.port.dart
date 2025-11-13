/// Generic stream use case interface for application layer.
///
/// Base interface for use cases that return streams instead of futures.
/// Used for reactive data flows like connectivity status, real-time updates, etc.
///
/// Unlike [IUseCase], this returns a [Stream<TResponse>] for continuous updates.
abstract class IStreamUseCase<TResponse> {
  /// Executes the use case and returns a stream of responses.
  ///
  /// The stream continues to emit new values as the underlying data changes.
  Stream<TResponse> execute();
}
