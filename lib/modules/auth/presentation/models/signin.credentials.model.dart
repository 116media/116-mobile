import 'package:equatable/equatable.dart' show Equatable;

/// Sign-in credentials model for user authentication.
///
/// Presentation layer model representing the data required for user signin.
/// Used by signin forms and passed to the signin use case. Contains credentials
/// (email or username) along with password.
class SignInCredentialsModel extends Equatable {
  final String credentials;
  final String password;

  const SignInCredentialsModel({required this.credentials, required this.password});

  @override
  List<Object?> get props => [credentials, password];
}
