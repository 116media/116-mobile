import 'package:equatable/equatable.dart' show Equatable;

/// Model representing reset password request credentials.
///
/// Used in the presentation layer to collect and pass password reset data
/// from UI forms to BLoC and down to the data layer during the
/// password recovery flow.
class ResetPasswordCredentialsModel extends Equatable {
  final String email;
  final String code;
  final String newPassword;

  const ResetPasswordCredentialsModel({
    required this.email,
    required this.code,
    required this.newPassword,
  });

  @override
  List<Object?> get props => [email, code, newPassword];
}
