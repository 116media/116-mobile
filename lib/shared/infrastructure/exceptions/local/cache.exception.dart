import '../../../domain/enums/cache.error.enum.dart' show CacheErrorType;

/// Base exception for local storage operations.
///
/// Represents errors during reading, writing, or accessing local storage
/// (e.g., Hive, SharedPreferences, SQLite). Follows a similar structure
/// to [ProblemDetailsException] for consistency, containing error type,
/// title, detail message, optional instance identifier, and extensions.
class CacheException implements Exception {
  final CacheErrorType title;
  final String detail;
  final String? instance;
  final String? traceId;
  final String? timestamp;

  CacheException({
    required this.title,
    required this.detail,
    this.instance,
    this.traceId,
    this.timestamp,
  });

  @override
  String toString() => '$title: $detail';
}
