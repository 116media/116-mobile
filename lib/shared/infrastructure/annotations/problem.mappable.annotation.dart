/// Mapping strategy for problem detection and conversion.
enum MappingStrategy {
  /// Map by title from HTTP response (for remote/server exceptions).
  /// The title field from RFC 7807 Problem Details is used as the identifier.
  byTitle,

  /// Map by type enum value (for local/cache exceptions).
  /// The enum type value is used as the identifier.
  byType,
}

/// Annotation to mark exceptions and failures as mappable.
///
/// This annotation is used by the code generator to automatically create
/// the ProblemMapper class that converts between exceptions and failures.
///
/// Use [ProblemMappable.remote] for server/API exceptions that map by title.
/// Use [ProblemMappable.local] for cache/local exceptions that map by type.
class ProblemMappable {
  /// The identifier used for mapping.
  /// - For remote: backend title (e.g., 'AccountInactiveException')
  /// - For local: enum value name (e.g., 'notFound')
  final String identifier;

  /// How this problem should be mapped.
  final MappingStrategy strategy;

  /// Creates a mappable problem with the given identifier and strategy.
  const ProblemMappable(
    this.identifier, {
    this.strategy = MappingStrategy.byTitle,
  });

  /// Creates a remote/server exception mapping by title.
  ///
  /// Example:
  /// ```dart
  /// @ProblemMappable.remote('AccountInactiveException')
  /// class AccountInactiveException extends ServerException { }
  /// ```
  const ProblemMappable.remote(String title)
      : identifier = title,
        strategy = MappingStrategy.byTitle;

  /// Creates a local/cache exception mapping by type.
  ///
  /// Example:
  /// ```dart
  /// @ProblemMappable.local('notFound')
  /// class CacheNotFoundException extends CacheException { }
  /// ```
  const ProblemMappable.local(String type)
      : identifier = type,
        strategy = MappingStrategy.byType;
}
