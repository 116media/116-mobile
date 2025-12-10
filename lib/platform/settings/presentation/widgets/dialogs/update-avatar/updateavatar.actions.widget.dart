import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/animations/fade.animation.dart';
import '../../../../../../shared/presentation/utils/colors.util.dart';
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart';
import '../../../../../../shared/presentation/widgets/buttons/outline.button.dart';
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart';

class ActionButtons extends StatelessWidget {
  final bool isUploading;
  final VoidCallback onCamera;
  final VoidCallback onGallery;

  const ActionButtons({
    super.key,
    required this.onCamera,
    required this.onGallery,
    required this.isUploading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: context.sizing.s12,
      children: [
        FadeAnimation(
          child: SolidButton(
            isFull: true,
            text: 'Camera',
            size: ButtonSize.sm,
            onPressed: onCamera,
            isDisabled: isUploading,
          ),
        ),
        FadeAnimation(
          delay: 0.65,
          reverse: true,
          child: SolidButton(
            isFull: true,
            text: 'Gallery',
            size: ButtonSize.sm,
            onPressed: onGallery,
            isDisabled: isUploading,
          ),
        ),
        Gap(context.sizing.s12),
        OutlineButton(
          text: 'Cancel',
          size: ButtonSize.sm,
          isDisabled: isUploading,
          color: ColorsUtil.error,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
