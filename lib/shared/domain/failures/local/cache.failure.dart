import '../../enums/cache.error.enum.dart' show CacheErrorType;
import '../failure.dart' show Failure;

/// Failure for local cache/storage operations.
///
/// Represents errors from local data sources like Hive, SharedPreferences,
/// or SQLite. Converted from [CacheException] in the repository layer.
class CacheFailure extends Failure {
  final String title;
  final String? instance;
  final CacheErrorType type;

  const CacheFailure({
    required this.type,
    required this.title,
    required super.message,
    this.instance,
  });

  @override
  List<Object?> get props => [type, title, message, instance];
}
