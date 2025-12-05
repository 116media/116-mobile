import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;

/// Exception thrown when Cloudinary image upload operations fail.
///
/// Represents errors during image upload to Cloudinary such as:
/// - Network connectivity issues
/// - Invalid upload preset or configuration
/// - File size or format restrictions
/// - Authentication/authorization failures with Cloudinary API
/// - Rate limiting or quota exceeded
///
/// This exception is thrown at the infrastructure layer and should be
/// caught and converted to a [Failure] at the repository layer.
class CloudinaryException extends ServerException {
  CloudinaryException(String message)
    : super(detail: message, title: "CloudinaryException", status: HttpStatusCode.badGateway);
}
