import '../failure.dart' show Failure;

/// Failure for API/server operations.
///
/// Represents errors from remote data sources following RFC 7807 Problem Details.
/// Converted from [ProblemDetailsException] in the repository layer.
class ServerFailure extends Failure {
  final String type;
  final String title;
  final int statusCode;
  final String? instance;
  final Map<String, dynamic>? extensions;

  const ServerFailure({
    required this.type,
    required this.title,
    required super.message,
    required this.statusCode,
    this.instance,
    this.extensions,
  });

  @override
  List<Object?> get props => [statusCode, type, title, message, instance, extensions];
}
