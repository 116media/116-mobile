import 'package:flutter/material.dart';

/// Helper function to show authentication dialogs with slide-up animation.
///
/// This function handles:
/// - Closing any existing dialog before opening a new one
/// - Slide-up animation from bottom
/// - Smooth transition between dialogs
///
/// Parameters:
/// - [context]: The build context
/// - [dialog]: The dialog widget to display
/// - [closeExisting]: Whether to close existing dialog before opening new one (default: false)
/// - [barrierDismissible]: Whether tapping outside the dialog dismisses it (default: false)
Future<void> showAuthDialog(
  BuildContext context,
  Widget dialog, {
  bool closeExisting = false,
  bool barrierDismissible = false,
}) async {
  if (closeExisting) {
    Navigator.of(context).pop();
    await Future.delayed(const Duration(milliseconds: 100));
    if (!context.mounted) return;
  }

  await showGeneralDialog<Widget>(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierLabel: barrierDismissible ? 'X' : null,
    transitionDuration: const Duration(milliseconds: 350),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      Tween<Offset> tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
      return SlideTransition(
        position: tween.animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
        child: child,
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return dialog;
    },
  );
}
