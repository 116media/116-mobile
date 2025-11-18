import 'package:equatable/equatable.dart' show Equatable;

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
