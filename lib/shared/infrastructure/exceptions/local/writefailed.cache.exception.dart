import '../../annotations/problem.mappable.annotation.dart' show ProblemMappable;
import '../../../domain/enums/cache.error.enum.dart' show CacheErrorType;
import 'cache.exception.dart' show CacheException;

/// Exception thrown when writing data to cache fails.
///
/// Indicates that data could not be persisted to local storage due to
/// write errors, permission issues, or storage constraints.
@ProblemMappable.local('WriteFailedCacheException')
class WriteFailedCacheException extends CacheException {
  WriteFailedCacheException({required super.detail, super.instance, super.extensions})
    : super(type: CacheErrorType.writeFailed, title: 'Cache Write Failed');
}
