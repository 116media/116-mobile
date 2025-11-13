import '../../../infrastructure/annotations/problem.mappable.annotation.dart' show ProblemMappable;
import '../../enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.failure.dart' show CacheFailure;

/// Failure when reading data from cache fails.
///
/// Represents errors when data could not be retrieved from local storage due to
/// read errors, access issues, or corrupted data.
@ProblemMappable.local('ReadFailedCacheFailure')
class ReadFailedCacheFailure extends CacheFailure {
  const ReadFailedCacheFailure({required super.message, super.instance})
    : super(type: CacheErrorType.readFailed, title: 'Cache Read Failed');
}
