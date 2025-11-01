import 'package:http_status/http_status.dart';
import '../../../../core/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../core/domain/failures/remote/server.failure.dart';

/// Failure for 423 Account Inactive errors.
///
/// Represents failures when user account is locked/inactive.
@ProblemMappable.remote('AccountInactiveFailure')
class AccountInactiveFailure extends ServerFailure {
  const AccountInactiveFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.locked);
}
