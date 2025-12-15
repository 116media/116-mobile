import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../themes/extensions/build.context.extension.dart';
import '../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;

class HeaderTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const HeaderTitle({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: context.sizing.s20,
            color: context.isDarkMode ? ColorsUtil.neutral200 : ColorsUtil.neutral700,
          ),
        ),
        Gap(context.sizing.s4),
        // Subtitle
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: context.sizing.s14,
            color: ColorsUtil.neutral400,
          ),
        ),
      ],
    );
  }
}
