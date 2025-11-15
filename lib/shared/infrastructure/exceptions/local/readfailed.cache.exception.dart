import '../../../domain/enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.exception.dart' show CacheException;

/// Exception thrown when reading data from cache fails.
///
/// Indicates that data could not be retrieved from local storage due to
/// read errors, access issues, or corrupted data.
class ReadFailedCacheException extends CacheException {
  ReadFailedCacheException({required super.detail, super.instance, super.traceId, super.timestamp})
    : super(title: CacheErrorType.readFailed);
}
