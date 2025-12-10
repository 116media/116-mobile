import 'dart:io' show File;
import 'package:flutter/material.dart';

import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';

/// Preview widget for displaying the cropped avatar image.
///
/// Shows the selected and cropped image in a circular frame before upload.
/// Used in UpdateAvatarDialog to provide visual feedback.
class AvatarPreview extends StatelessWidget {
  final File file;

  const AvatarPreview({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * context.sizing.s0_5;

    return ClipOval(
      child: Image.file(file, fit: BoxFit.cover, width: size, height: size),
    );
  }
}
