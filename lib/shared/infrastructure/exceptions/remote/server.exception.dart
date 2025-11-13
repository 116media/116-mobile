/// Base exception for API errors following RFC 7807 Problem Details standard.
///
/// Represents errors returned from the backend API as Problem Details.
/// Contains HTTP status code, error type URI, title, detail message,
/// and optional instance identifier and extensions.
class ServerException implements Exception {
  final int status;
  final String type;
  final String title;
  final String detail;
  final String? instance;
  final Map<String, dynamic>? extensions;

  ServerException({
    required this.type,
    required this.title,
    required this.detail,
    required this.status,
    this.instance,
    this.extensions,
  });

  @override
  String toString() => '$title: $detail (Status: $status)';
}
