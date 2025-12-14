import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Consumer;
import 'package:world_countries/world_countries.dart' show WorldCountry;

import '../../../../i18n/strings.g.dart' show t;
import '../../themes/extensions/build.context.extension.dart';
import '../empties/empty.data.widget.dart' show EmptyData;
import 'country.option.widget.dart' show CountryOption;
import 'country.picker.provider.dart' show CountryPickerProvider;

/// Displays the scrollable list of countries.
///
/// Shows all available countries (excluding the selected one) in a
/// scrollable list with dividers between items.
class CountryList extends StatelessWidget {
  final Color dividerColor;
  final String languageCode;
  final Function(CountryPickerProvider, WorldCountry) onSelectCountry;

  const CountryList({
    super.key,
    required this.languageCode,
    required this.dividerColor,
    required this.onSelectCountry,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Consumer<CountryPickerProvider>(
        builder: (context, provider, child) {
          final countries = provider.filteredCountries;

          if (countries.isEmpty) return EmptyData(text: t.shared.empty.noResults);

          // Filter out selected country from the list
          final selectedCountry = provider.selectedCountry;
          final filteredCountries = selectedCountry != null
              ? countries
                    .where((c) => c.internationalName != selectedCountry.internationalName)
                    .toList()
              : countries;

          return ListView.separated(
            shrinkWrap: true,
            itemCount: filteredCountries.length,
            separatorBuilder: (context, index) => Divider(
              height: context.sizing.s16,
              color: dividerColor.withValues(alpha: context.sizing.s0_5),
            ),
            itemBuilder: (context, index) {
              final country = filteredCountries[index];
              final countryName = provider.getCountryName(country, languageCode);

              return CountryOption(
                country: country,
                isSelected: false,
                countryName: countryName,
                onTap: () => onSelectCountry(provider, country),
              );
            },
          );
        },
      ),
    );
  }
}
