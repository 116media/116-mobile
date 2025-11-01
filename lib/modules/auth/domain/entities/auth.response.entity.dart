import 'user.entity.dart';

/// Authentication response entity returned after successful signin.
///
/// Domain entity representing the complete authentication state.
/// Contains both the JWT token for API authentication and the
/// authenticated user's data.
class AuthResponseEntity {
  final String token;
  final UserEntity user;

  const AuthResponseEntity({
    required this.token,
    required this.user,
  });
}
