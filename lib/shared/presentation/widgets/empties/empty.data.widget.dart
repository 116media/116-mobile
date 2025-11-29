import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../presentation/themes/extensions/build.context.extension.dart';

class EmptyData extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;

  const EmptyData({super.key, required this.text, this.width, this.height});

  String _getSvgAssetPath(BuildContext context) {
    final theme = context.isDarkMode ? 'dark' : 'light';
    return 'assets/illustrations/$theme/empty_data.svg';
  }

  @override
  Widget build(BuildContext context) {
    final svgAssetPath = _getSvgAssetPath(context);

    return Column(
      spacing: context.sizing.s12,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          svgAssetPath,
          height: height,
          semanticsLabel: 'empty',
          width: width ?? MediaQuery.of(context).size.width / context.sizing.s2_5,
        ),
        Text(text, style: context.textTheme.bodyMedium),
      ],
    );
  }
}
