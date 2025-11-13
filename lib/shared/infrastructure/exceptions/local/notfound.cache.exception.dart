import '../../annotations/problem.mappable.annotation.dart' show ProblemMappable;
import '../../../domain/enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.exception.dart' show CacheException;

/// Exception thrown when requested data doesn't exist in cache.
///
/// Indicates that the specific resource or key was not found in local storage.
@ProblemMappable.local('NotFoundCacheException')
class NotFoundCacheException extends CacheException {
  NotFoundCacheException({required super.detail, super.instance, super.extensions})
    : super(type: CacheErrorType.notFound, title: 'Cache Not Found');
}
