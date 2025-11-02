import 'package:equatable/equatable.dart' show Equatable;

/// Sign-up credentials model for user registration.
///
/// Presentation layer model representing the data required for user signup.
/// Used by signup forms and passed to the signup use case. Contains email,
/// username, and password.
class SignUpCredentialsModel extends Equatable {
  final String email;
  final String userName;
  final String password;

  const SignUpCredentialsModel({
    required this.email,
    required this.userName,
    required this.password,
  });

  @override
  List<Object?> get props => [email, userName, password];
}
