import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Consumer;
import 'package:world_countries/world_countries.dart' show WorldCountry;

import '../../themes/extensions/build.context.extension.dart';
import 'country.option.widget.dart' show CountryOption;
import 'country.picker.provider.dart' show CountryPickerProvider;

/// Displays the currently selected country with special styling.
///
/// Shows the selected country in a highlighted container with primary color
/// border and background. Only visible when a country is selected.
class SelectedCountry extends StatelessWidget {
  final String languageCode;
  final Function(CountryPickerProvider, WorldCountry) onSelectCountry;

  const SelectedCountry({super.key, required this.languageCode, required this.onSelectCountry});

  @override
  Widget build(BuildContext context) {
    return Consumer<CountryPickerProvider>(
      builder: (context, provider, child) {
        final selectedCountry = provider.selectedCountry;
        if (selectedCountry == null) return const SizedBox.shrink();

        final countryName = provider.getCountryName(selectedCountry, languageCode);

        return Container(
          padding: EdgeInsets.symmetric(
            vertical: context.sizing.s6,
            horizontal: context.sizing.s12,
          ),
          decoration: BoxDecoration(
            color: context.primaryColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(context.sizing.s8),
            border: Border.all(color: context.primaryColor, width: context.sizing.s2),
          ),
          child: CountryOption(
            isSelected: true,
            country: selectedCountry,
            countryName: countryName,
            onTap: () => onSelectCountry(provider, selectedCountry),
          ),
        );
      },
    );
  }
}
