import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../core/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../core/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;

/// 410 OTP Expiration exception.
///
/// Thrown when the OTP (One-Time Password) has expired and is
/// no longer valid for verification.
@ProblemMappable.remote('OtpExpirationException')
class OtpExpirationException extends ServerException {
  OtpExpirationException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.gone);
}
