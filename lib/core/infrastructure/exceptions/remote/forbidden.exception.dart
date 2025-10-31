import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;
import '../../annotations/problem.mappable.annotation.dart';

/// 403 Forbidden exception.
///
/// Thrown when the API returns 403 status code indicating the authenticated
/// user lacks sufficient permissions for the requested resource.
@ProblemMappable.remote('ForbiddenException')
class ForbiddenException extends ServerException {
  ForbiddenException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.forbidden);
}
