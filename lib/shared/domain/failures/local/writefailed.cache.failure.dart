import 'cache.failure.dart' show CacheFailure;

/// Failure when writing data to cache fails.
///
/// Represents errors when data could not be persisted to local storage due to
/// write errors, permission issues, or storage constraints.
class WriteFailedCacheFailure extends CacheFailure {
  const WriteFailedCacheFailure({
    required super.detail,
    super.instance,
    super.traceId,
    super.timestamp,
  }) : super(title: 'WriteFailedCacheException');
}
