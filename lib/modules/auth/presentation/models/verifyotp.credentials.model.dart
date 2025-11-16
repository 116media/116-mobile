import 'package:equatable/equatable.dart' show Equatable;

import '../../domain/enums/otppurpose.enum.dart' show OtpPurpose;

class VerifyOtpCredentialsModel extends Equatable {
  final String otp;
  final String email;
  final OtpPurpose purpose;

  const VerifyOtpCredentialsModel({required this.otp, required this.email, required this.purpose});

  @override
  List<Object?> get props => [otp, email, purpose];
}
