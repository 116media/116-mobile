import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;
import '../../annotations/problem.mappable.annotation.dart' show ProblemMappable;

/// 409 Conflict exception.
///
/// Thrown when the API returns 409 status code indicating a resource conflict,
/// such as duplicate entries or concurrent modification.
@ProblemMappable.remote('ConflictException')
class ConflictException extends ServerException {
  ConflictException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.conflict);
}
