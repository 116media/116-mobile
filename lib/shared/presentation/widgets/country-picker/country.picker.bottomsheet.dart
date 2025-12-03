import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show ChangeNotifierProvider;
import 'package:world_countries/world_countries.dart' show WorldCountry;

import '../../themes/extensions/build.context.extension.dart';
import 'country.picker.content.widget.dart' show CountryPickerContent;
import 'country.picker.provider.dart' show CountryPickerProvider;

/// Shows a bottom sheet for selecting a country.
///
/// Displays a modal bottom sheet containing [CountryPickerContent] with all
/// countries, search functionality, and dial codes. The sheet is scroll-controlled
/// and features rounded top corners.
///
/// Returns the selected [WorldCountry] when user makes a selection, or null
/// if the sheet is dismissed without selection.
///
/// Parameters:
/// - [context]: BuildContext for showing the modal bottom sheet
/// - [initialCountry]: Optional initially selected country to display
/// - [onCountrySelected]: Optional callback when a country is selected
Future<WorldCountry?> showCountryPickerBottomSheet(
  BuildContext context, {
  WorldCountry? initialCountry,
  Function(WorldCountry)? onCountrySelected,
}) async {
  final result = await showModalBottomSheet<WorldCountry>(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(context.sizing.s16)),
    ),
    builder: (context) => ChangeNotifierProvider(
      create: (_) {
        final provider = CountryPickerProvider();
        if (initialCountry != null) {
          provider.selectCountry(initialCountry);
        }
        return provider;
      },
      child: const CountryPickerContent(),
    ),
  );

  if (result != null && onCountrySelected != null) {
    onCountrySelected(result);
  }

  return result;
}
