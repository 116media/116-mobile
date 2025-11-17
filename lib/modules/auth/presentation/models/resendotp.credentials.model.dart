import 'package:equatable/equatable.dart' show Equatable;

import '../../domain/enums/otppurpose.enum.dart' show OtpPurpose;

class ResendOtpCredentialsModel extends Equatable {
  final String email;
  final OtpPurpose purpose;

  const ResendOtpCredentialsModel({required this.email, required this.purpose});

  @override
  List<Object?> get props => [email, purpose];
}
