/// Configuration constants for problem mapper generation scripts.
///
/// This file contains shared configuration values used across multiple scripts
/// for exception and failure mapping code generation.
library;

/// The name of the Flutter package.
const String kPackageName = 'cent16';

/// Path to the base cache failure class.
const String kCacheFailurePath = 'core/domain/failures/local/cache.failure.dart';

/// Path to the base server failure class.
const String kServerFailurePath = 'core/domain/failures/remote/server.failure.dart';

/// Path to the generated problem mapper output file.
const String kOutputPath = 'lib/core/infrastructure/exceptions/problem.mapper.g.dart';
