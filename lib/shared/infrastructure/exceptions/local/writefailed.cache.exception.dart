import '../../../domain/enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.exception.dart' show CacheException;

/// Exception thrown when writing data to cache fails.
///
/// Indicates that data could not be persisted to local storage due to
/// write errors, permission issues, or storage constraints.
class WriteFailedCacheException extends CacheException {
  WriteFailedCacheException({required super.detail, super.instance, super.traceId, super.timestamp})
    : super(title: CacheErrorType.writeFailed);
}
