/// Types of cache operation errors.
///
/// Defines all possible error types that can occur during local cache
/// operations. This enum is used by both exceptions (infrastructure layer)
/// and failures (domain layer) to maintain consistency.
enum CacheErrorType {
  /// Data or resource not found in cache.
  notFound,

  /// Failed to write data to cache.
  writeFailed,

  /// Failed to read data from cache.
  readFailed,

  /// Access to cache denied due to permissions.
  accessDenied,
}
