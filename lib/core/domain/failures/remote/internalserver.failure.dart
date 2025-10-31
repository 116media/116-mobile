import 'package:http_status/http_status.dart';
import 'server.failure.dart';
import '../../../infrastructure/annotations/problem.mappable.annotation.dart';

/// Failure for 500 Internal Server errors.
///
/// Represents unexpected server-side errors.
@ProblemMappable.remote('InternalServerFailure')
class InternalServerFailure extends ServerFailure {
  const InternalServerFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.internalServerError);
}
