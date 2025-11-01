import 'package:http_status/http_status.dart';
import '../../../../core/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../core/domain/failures/remote/server.failure.dart';

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
