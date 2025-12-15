import 'package:equatable/equatable.dart' show Equatable;

/// Model representing change password request credentials.
///
/// Used in the presentation layer to collect and pass password change data
/// from UI forms to BLoC and down to the data layer for logged-in users.
class ChangePasswordCredentialsModel extends Equatable {
  final String oldPassword;
  final String newPassword;

  const ChangePasswordCredentialsModel({required this.oldPassword, required this.newPassword});

  @override
  List<Object?> get props => [oldPassword, newPassword];
}
