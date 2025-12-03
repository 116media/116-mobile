import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show FilteringTextInputFormatter, LengthLimitingTextInputFormatter;
import 'package:gap/gap.dart' show Gap;
import 'package:world_countries/world_countries.dart' show IddExtension, WorldCountry;

import '../../constants/shared.constants.dart' show kMaxNationalPhoneLength;
import '../../themes/extensions/build.context.extension.dart';
import '../../utils/input.formatters.util.dart' show NoLeadingZeroFormatter;
import '../country-picker/country.flag.widget.dart' show CountryFlagImage;
import '../country-picker/country.picker.bottomsheet.dart' show showCountryPickerBottomSheet;
import 'inputfield.widget.dart' show InputField;

/// Phone number input field with country code prefix.
///
/// Displays an input field with a country flag and dial code prefix.
/// Features:
/// - Country flag displayed as prefix
/// - Dial code shown next to flag
/// - Tappable prefix to change country
/// - Phone number validation
/// - Numeric keyboard
class PhoneInputField extends StatefulWidget {
  final String label;
  final bool isFilled;
  final bool isDisabled;
  final WorldCountry? initialCountry;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(WorldCountry)? onCountryChanged;

  const PhoneInputField({
    super.key,
    required this.label,
    this.initialCountry,
    this.validator,
    this.controller,
    this.isFilled = false,
    this.isDisabled = false,
    this.onCountryChanged,
  });

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  late WorldCountry _selectedCountry;

  @override
  void initState() {
    super.initState();
    _selectedCountry = widget.initialCountry ?? WorldCountry.list.first;
  }

  @override
  void didUpdateWidget(PhoneInputField oldWidget) {
    /// Updates the selected country when `initialCountry` changes,
    /// Ensuring the country code updates when loaded asynchronously from Hive.
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialCountry != widget.initialCountry && widget.initialCountry != null) {
      setState(() {
        _selectedCountry = widget.initialCountry!;
      });
    }
  }

  Future<void> _showCountryPicker() async {
    final country = await showCountryPickerBottomSheet(context, initialCountry: _selectedCountry);
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
      widget.onCountryChanged?.call(country);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dialCode = _selectedCountry.idd.phoneCode();

    return InputField(
      label: widget.label,
      isFilled: widget.isFilled,
      validator: widget.validator,
      isDisabled: widget.isDisabled,
      controller: widget.controller,
      prefix: GestureDetector(
        onTap: widget.isDisabled ? null : _showCountryPicker,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CountryFlagImage(
              country: _selectedCountry,
              width: context.sizing.s14,
              height: context.sizing.s10,
            ),
            Gap(context.sizing.s8),
            Text(
              dialCode,
              style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
            Icon(Icons.arrow_drop_down_rounded, size: context.sizing.s20),
            Gap(context.sizing.s8),
          ],
        ),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        NoLeadingZeroFormatter(),
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(kMaxNationalPhoneLength),
      ],
    );
  }
}
