import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;
import '../../annotations/problem.mappable.annotation.dart' show ProblemMappable;

/// 500 Internal Server Error exception.
///
/// Thrown when the API returns 500 status code indicating an internal
/// server error or unexpected condition.
@ProblemMappable.remote('InternalServerException')
class InternalServerException extends ServerException {
  InternalServerException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.internalServerError);
}
