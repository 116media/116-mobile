import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;
import 'package:world_countries/world_countries.dart' show IddExtension, WorldCountry;

import '../../../presentation/themes/extensions/build.context.extension.dart';
import '../../../presentation/utils/colors.util.dart' show ColorsUtil;
import 'country.flag.widget.dart' show CountryFlagImage;

/// Individual country option widget for the country picker list.
///
/// Displays country flag, name, and dial code in a tappable container.
/// Shows visual feedback for selected state with background color change.
class CountryOption extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String countryName;
  final WorldCountry country;

  const CountryOption({
    super.key,
    required this.country,
    required this.countryName,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    final dialCode = country.idd.phoneCode();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: context.sizing.s12),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(context.sizing.s8)),
        child: Row(
          children: [
            // Flag widget
            CountryFlagImage(country: country),

            Gap(context.sizing.s12),

            // Country name
            Expanded(
              child: Text(
                countryName,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ),

            // Dial code
            Text(
              dialCode,
              style: context.textTheme.bodyMedium?.copyWith(
                color: isDarkMode ? ColorsUtil.slate400 : ColorsUtil.slate600,
              ),
            ),

            // Checkmark icon for selected country
            if (isSelected) ...[
              Gap(context.sizing.s12),
              Icon(Icons.check_circle, color: context.primaryColor, size: context.sizing.s20),
            ],
          ],
        ),
      ),
    );
  }
}
