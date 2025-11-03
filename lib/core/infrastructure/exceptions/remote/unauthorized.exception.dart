import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;
import '../../annotations/problem.mappable.annotation.dart';

/// 401 Unauthorized exception.
///
/// Thrown when the API returns 401 status code indicating authentication
/// is required or has failed (invalid/expired token).
@ProblemMappable.remote('UnauthorizedException')
class UnauthorizedException extends ServerException {
  UnauthorizedException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.unauthorized);
}
