import '../../../infrastructure/annotations/problem.mappable.annotation.dart' show ProblemMappable;
import '../../enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.failure.dart' show CacheFailure;

/// Failure when writing data to cache fails.
///
/// Represents errors when data could not be persisted to local storage due to
/// write errors, permission issues, or storage constraints.
@ProblemMappable.local('WriteFailedCacheFailure')
class WriteFailedCacheFailure extends CacheFailure {
  const WriteFailedCacheFailure({required super.message, super.instance})
    : super(type: CacheErrorType.writeFailed, title: 'Cache Write Failed');
}
