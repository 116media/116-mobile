import 'package:chopper/chopper.dart' show Response;

import '../../domain/failures/failure.dart' show Failure;
import '../../domain/failures/local/cache.failure.dart' show CacheFailure;
import '../../domain/failures/remote/server.failure.dart' show ServerFailure;
import '../../domain/failures/remote/unknown.failure.dart' show UnknownFailure;
import '../exceptions/local/cache.exception.dart' show CacheException;
import '../exceptions/remote/unknown.exception.dart' show UnknownException;
import '../exceptions/remote/server.exception.dart' show ServerException;

/// Utility class for mapping between exceptions and failures.
///
/// Provides static methods to convert Chopper HTTP responses to typed exceptions
/// and convert exceptions to domain failures for use in the application layer.
class ProblemMapper {
  // Private constructor to prevent instantiation
  ProblemMapper._();

  /// Converts a Chopper response error to a typed [ServerException].
  ///
  /// Extracts error details from [response.error] (which is a Map) and
  /// creates the appropriate exception type. If the error cannot be parsed
  /// or is unknown, returns [UnknownException].
  ///
  /// **Parameters:**
  /// - [response]: The Chopper response containing error details in response.error
  ///
  /// **Returns:** A typed [ServerException] based on the error details
  static ServerException toException(Response response) {
    try {
      final errorMap = response.error as Map<String, dynamic>?;

      if (errorMap == null) {
        return UnknownException();
      }

      final int status = errorMap['status'];
      final String title = errorMap['title'];
      final String detail = errorMap['detail'];
      final String? instance = errorMap['instance'];
      final String? traceId = errorMap['traceId'];
      final String? timestamp = errorMap['timestamp'];

      return ServerException(
        title: title,
        detail: detail,
        status: status,
        traceId: traceId,
        instance: instance,
        timestamp: timestamp,
      );
    } catch (e) {
      return UnknownException();
    }
  }

  /// Converts any [Exception] to a domain [Failure].
  ///
  /// Maps exception types to their corresponding failure types:
  /// - [ServerException] → [ServerFailure]
  /// - [CacheException] → [CacheFailure]
  /// - Unknown exceptions → [ServerFailure] with 500 status
  ///
  /// **Parameters:**
  /// - [exception]: The exception to convert
  ///
  /// **Returns:** A typed [Failure] based on the exception type
  static Failure toFailure(Exception exception) {
    return switch (exception) {
      ServerException() => ServerFailure(
        title: exception.title,
        detail: exception.detail,
        status: exception.status,
        instance: exception.instance,
        traceId: exception.traceId,
        timestamp: exception.timestamp,
      ),
      CacheException() => CacheFailure(
        title: exception.title.name,
        detail: exception.detail,
        instance: exception.instance,
        traceId: exception.traceId,
        timestamp: exception.timestamp,
      ),
      _ => UnknownFailure(),
    };
  }
}
