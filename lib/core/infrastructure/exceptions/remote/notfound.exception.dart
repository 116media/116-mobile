import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;
import '../../annotations/problem.mappable.annotation.dart';

/// 404 Not Found exception.
///
/// Thrown when the API returns 404 status code indicating the requested
/// resource doesn't exist.
@ProblemMappable.remote('NotFoundException')
class NotFoundException extends ServerException {
  NotFoundException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.notFound);
}
