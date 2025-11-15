import '../failure.dart' show Failure;

/// Failure for API/server operations.
///
/// Represents errors from remote data sources following RFC 7807 Problem Details.
/// Converted from [ServerException] in the repository layer.
class ServerFailure extends Failure {
  final int status;
  final String? instance;
  final String? traceId;
  final String? timestamp;

  const ServerFailure({
    required super.title,
    required super.detail,
    required this.status,
    this.instance,
    this.traceId,
    this.timestamp,
  });

  @override
  List<Object?> get props => [status, title, detail, instance, traceId, timestamp];
}
