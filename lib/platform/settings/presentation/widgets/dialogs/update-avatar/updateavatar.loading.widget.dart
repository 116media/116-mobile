import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart' show PlatformWidget;

import '../../../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;

/// Full-screen loading overlay with platform-specific spinner.
///
/// Displays a semi-transparent black backdrop with a centered loading spinner.
/// Uses CupertinoActivityIndicator on iOS and CircularProgressIndicator on Android.
/// Covers the entire parent widget using Positioned.fill.
class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: ColorsUtil.neutral900.withValues(alpha: context.sizing.s0_5),
        child: Center(
          child: PlatformWidget(
            cupertino: (_, _) => CupertinoActivityIndicator(
              color: context.colors.primary,
              radius: context.sizing.s12,
            ),
            material: (_, _) => SizedBox(
              width: context.sizing.s24,
              height: context.sizing.s24,
              child: CircularProgressIndicator(
                strokeWidth: context.sizing.s2,
                valueColor: AlwaysStoppedAnimation(context.colors.primary),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
