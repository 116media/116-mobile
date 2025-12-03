import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart' show IddExtension, WorldCountry;

import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/widgets/inputfields/inputfield.widget.dart'
    show InputField;
import '../../../../../../shared/presentation/widgets/inputfields/phone.inputfield.widget.dart'
    show PhoneInputField;
import '../../../validators/updateprofile.validator.dart' show UpdateProfileValidator;

/// Editable fields for updating user profile.
///
/// Contains username and telephone input fields in a responsive layout.
/// Used in the update profile form.
class EditableFormFields extends StatelessWidget {
  final bool isDisabled;
  final TextEditingController userNameController;
  final TextEditingController phoneController;
  final WorldCountry? selectedCountry;
  final Function(WorldCountry) onCountryChanged;

  const EditableFormFields({
    super.key,
    required this.isDisabled,
    required this.userNameController,
    required this.phoneController,
    required this.selectedCountry,
    required this.onCountryChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: context.sizing.s12,
      runSpacing: context.sizing.s12,
      alignment: WrapAlignment.center,
      children: [
        InputField(
          isFilled: true,
          label: 'Username',
          isDisabled: isDisabled,
          controller: userNameController,
          validator: UpdateProfileValidator.userName('Username'),
        ),
        PhoneInputField(
          isFilled: true,
          label: 'Telephone',
          isDisabled: isDisabled,
          controller: phoneController,
          initialCountry: selectedCountry,
          onCountryChanged: onCountryChanged,
          validator: UpdateProfileValidator.phoneNumber(
            'Telephone',
            selectedCountry?.idd.phoneCode(),
          ),
        ),
      ],
    );
  }
}