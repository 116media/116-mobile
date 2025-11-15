import 'cache.failure.dart' show CacheFailure;

/// Failure when requested data doesn't exist in cache.
///
/// Represents errors when the specific resource or key was not found in local storage.
class NotFoundCacheFailure extends CacheFailure {
  const NotFoundCacheFailure({
    required super.detail,
    super.instance,
    super.traceId,
    super.timestamp,
  }) : super(title: 'NotFoundCacheException');
}
