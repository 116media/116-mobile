import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;
import '../../annotations/problem.mappable.annotation.dart';

/// Default exception for unregistered exception types.
///
/// Thrown when the API returns an error that doesn't match any specific
/// exception handler. Serves as a fallback for unexpected server errors.
@ProblemMappable.remote('DefaultException')
class DefaultException extends ServerException {
  DefaultException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.internalServerError);
}
