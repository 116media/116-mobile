import 'cache.failure.dart' show CacheFailure;

/// Failure when access to cache is denied.
///
/// Represents permission or security issues preventing access to local storage,
/// such as file system permissions or encryption key problems.
class AccessDeniedCacheFailure extends CacheFailure {
  const AccessDeniedCacheFailure({
    required super.detail,
    super.instance,
    super.traceId,
    super.timestamp,
  }) : super(title: 'AccessDeniedCacheException');
}
