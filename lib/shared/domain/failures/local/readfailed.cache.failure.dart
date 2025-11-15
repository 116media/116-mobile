import 'cache.failure.dart' show CacheFailure;

/// Failure when reading data from cache fails.
///
/// Represents errors when data could not be retrieved from local storage due to
/// read errors, access issues, or corrupted data.
class ReadFailedCacheFailure extends CacheFailure {
  const ReadFailedCacheFailure({
    required super.detail,
    super.instance,
    super.traceId,
    super.timestamp,
  }) : super(title: 'ReadFailedCacheException');
}
