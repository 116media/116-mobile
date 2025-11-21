import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;

/// Exception thrown when social authentication (Google, Facebook) fails.
///
/// Represents errors during OAuth authentication flow such as user
/// cancellation, authentication failure, or invalid credentials.
class SocialAuthException extends ServerException {
  SocialAuthException(String message)
    : super(title: "SocialAuthException", detail: message, status: HttpStatusCode.unauthorized);
}
