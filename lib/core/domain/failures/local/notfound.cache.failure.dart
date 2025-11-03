import '../../../infrastructure/annotations/problem.mappable.annotation.dart' show ProblemMappable;
import '../../enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.failure.dart' show CacheFailure;

/// Failure when requested data doesn't exist in cache.
///
/// Represents errors when the specific resource or key was not found in local storage.
@ProblemMappable.local('NotFoundCacheFailure')
class NotFoundCacheFailure extends CacheFailure {
  const NotFoundCacheFailure({required super.message, super.instance})
    : super(type: CacheErrorType.notFound, title: 'Cache Not Found');
}
