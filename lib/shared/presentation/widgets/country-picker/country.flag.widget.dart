import 'package:flutter/material.dart';
import 'package:world_flags/world_flags.dart' show CountryFlag;
import 'package:world_countries/world_countries.dart' show WorldCountry;

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';

class CountryFlagImage extends StatelessWidget {
  final WorldCountry country;
  final double? width;
  final double? height;

  const CountryFlagImage({super.key, required this.country, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(context.sizing.s2),
      child: CountryFlag.simplified(
        country,
        width: width ?? context.sizing.s28,
        height: height ?? context.sizing.s20,
      ),
    );
  }
}
