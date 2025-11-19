import 'package:equatable/equatable.dart' show Equatable;

class ForgotPasswordCredentialsModel extends Equatable {
  final String email;

  const ForgotPasswordCredentialsModel({required this.email});

  @override
  List<Object?> get props => [email];
}
