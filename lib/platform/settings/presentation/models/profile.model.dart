import 'package:equatable/equatable.dart' show Equatable;

/// Model representing profile update request data.
///
/// Used in the presentation layer to collect and pass profile update information
/// from UI forms to BLoC and down to the data layer.
class ProfileModel extends Equatable {
  final String? email;
  final String? userName;
  final String? countryName;
  final String? countryFlagUrl;
  final String? countryIsoCode;
  final String? countryDialCode;
  final String? partialPhoneNumber;

  const ProfileModel({
    this.email,
    this.userName,
    this.countryName,
    this.countryFlagUrl,
    this.countryIsoCode,
    this.countryDialCode,
    this.partialPhoneNumber,
  });

  @override
  List<Object?> get props => [
    email,
    userName,
    countryName,
    countryFlagUrl,
    countryIsoCode,
    countryDialCode,
    partialPhoneNumber,
  ];
}
