import '../../../domain/enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.exception.dart' show CacheException;

/// Exception thrown when access to cache is denied.
///
/// Indicates permission or security issues preventing access to local storage,
/// such as file system permissions or encryption key problems.
class AccessDeniedCacheException extends CacheException {
  AccessDeniedCacheException({
    required super.detail,
    super.instance,
    super.traceId,
    super.timestamp,
  }) : super(title: CacheErrorType.accessDenied);
}
