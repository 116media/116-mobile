import 'package:equatable/equatable.dart' show Equatable;

import 'user.entity.dart' show UserEntity;

/// Authentication response entity returned after successful signin.
///
/// Domain entity representing the complete authentication state.
/// Contains both the JWT token for API authentication and the
/// authenticated user's data.
class AuthResponseEntity extends Equatable {
  final String token;
  final UserEntity user;

  const AuthResponseEntity({required this.token, required this.user});

  @override
  List<Object?> get props => [token, user];
}
