import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../shared/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../shared/domain/failures/remote/server.failure.dart' show ServerFailure;

/// Failure for 403 Account Not Verified errors.
///
/// Represents failures when user account requires verification.
@ProblemMappable.remote('AccountNotVerifiedFailure')
class AccountNotVerifiedFailure extends ServerFailure {
  const AccountNotVerifiedFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.forbidden);
}
