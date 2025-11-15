import '../../../domain/enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.exception.dart' show CacheException;

/// Exception thrown when requested data doesn't exist in cache.
///
/// Indicates that the specific resource or key was not found in local storage.
class NotFoundCacheException extends CacheException {
  NotFoundCacheException({required super.detail, super.instance, super.traceId, super.timestamp})
    : super(title: CacheErrorType.notFound);
}
