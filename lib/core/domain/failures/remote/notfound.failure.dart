import 'package:http_status/http_status.dart';
import 'server.failure.dart';
import '../../../infrastructure/annotations/problem.mappable.annotation.dart';

/// Failure for 404 Not Found errors.
///
/// Represents errors when requested resources don't exist.
@ProblemMappable.remote('NotFoundFailure')
class NotFoundFailure extends ServerFailure {
  const NotFoundFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.notFound);
}
