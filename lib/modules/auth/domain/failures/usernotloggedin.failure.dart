import 'package:http_status/http_status.dart';
import '../../../../core/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../core/domain/failures/remote/server.failure.dart';

/// Failure for 403 User Not Logged In errors.
///
/// Represents failures when operation requires authenticated user.
@ProblemMappable.remote('UserNotLoggedInFailure')
class UserNotLoggedInFailure extends ServerFailure {
  const UserNotLoggedInFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.forbidden);
}
