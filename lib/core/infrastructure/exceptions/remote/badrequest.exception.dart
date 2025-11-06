import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;
import '../../annotations/problem.mappable.annotation.dart' show ProblemMappable;

/// 400 Bad Request exception.
///
/// Thrown when the API returns 400 status code indicating invalid input,
/// validation failure, or malformed request data.
@ProblemMappable.remote('BadRequestException')
class BadRequestException extends ServerException {
  BadRequestException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.badRequest);
}
