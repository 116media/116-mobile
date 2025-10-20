import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../themes/extensions/build.context.extension.dart';
import '../../../../shared/utils/colors.util.dart' show ColorsUtil;

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
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: context.isDarkMode ? ColorsUtil.white : ColorsUtil.black,
          ),
        ),
        Gap(context.sizing.s4),
        // Subtitle
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: ColorsUtil.neutral400,
          ),
        ),
      ],
    );
  }
}
