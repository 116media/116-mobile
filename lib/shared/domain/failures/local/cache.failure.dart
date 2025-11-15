import '../failure.dart' show Failure;

/// Failure for local cache/storage operations.
///
/// Represents errors from local data sources like Hive, SharedPreferences,
/// or SQLite. Converted from [CacheException] in the repository layer.
class CacheFailure extends Failure {
  final String? instance;
  final String? traceId;
  final String? timestamp;

  const CacheFailure({
    required super.title,
    required super.detail,
    this.instance,
    this.traceId,
    this.timestamp,
  });

  @override
  List<Object?> get props => [title, detail, instance, traceId, timestamp];
}
