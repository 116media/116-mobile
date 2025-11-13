import '../../../infrastructure/annotations/problem.mappable.annotation.dart' show ProblemMappable;
import '../../enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.failure.dart' show CacheFailure;

/// Failure when access to cache is denied.
///
/// Represents permission or security issues preventing access to local storage,
/// such as file system permissions or encryption key problems.
@ProblemMappable.local('AccessDeniedCacheFailure')
class AccessDeniedCacheFailure extends CacheFailure {
  const AccessDeniedCacheFailure({required super.message, super.instance})
    : super(type: CacheErrorType.accessDenied, title: 'Cache Access Denied');
}
