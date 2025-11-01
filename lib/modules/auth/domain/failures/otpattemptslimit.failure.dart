import 'package:http_status/http_status.dart';
import '../../../../core/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../core/domain/failures/remote/server.failure.dart';

/// Failure for 429 OTP Attempts Limit errors.
///
/// Represents failures when user exceeds OTP verification attempts.
@ProblemMappable.remote('OtpAttemptsLimitFailure')
class OtpAttemptsLimitFailure extends ServerFailure {
  const OtpAttemptsLimitFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.tooManyRequests);
}
