import '../../../domain/enums/cache.error.enum.dart' show CacheErrorType;

/// Base exception for local storage operations.
///
/// Represents errors during reading, writing, or accessing local storage
/// (e.g., Hive, SharedPreferences, SQLite). Follows a similar structure
/// to [ProblemDetailsException] for consistency, containing error type,
/// title, detail message, optional instance identifier, and extensions.
class CacheException implements Exception {
  final String title;
  final String detail;
  final String? instance;
  final CacheErrorType type;
  final Map<String, dynamic>? extensions;

  CacheException({
    required this.type,
    required this.title,
    required this.detail,
    this.instance,
    this.extensions,
  });

  @override
  String toString() => '$title: $detail';
}
