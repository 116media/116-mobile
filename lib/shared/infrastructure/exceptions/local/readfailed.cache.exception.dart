import '../../annotations/problem.mappable.annotation.dart' show ProblemMappable;
import '../../../domain/enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.exception.dart' show CacheException;

/// Exception thrown when reading data from cache fails.
///
/// Indicates that data could not be retrieved from local storage due to
/// read errors, access issues, or corrupted data.
@ProblemMappable.local('ReadFailedCacheException')
class ReadFailedCacheException extends CacheException {
  ReadFailedCacheException({required super.detail, super.instance, super.extensions})
    : super(type: CacheErrorType.readFailed, title: 'Cache Read Failed');
}
