import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;
import 'package:panara_dialogs/panara_dialogs.dart' show PanaraCustomDialog;

import '../themes/extensions/build.context.extension.dart';
import '../widgets/buttons/enums/button.size.enum.dart' show ButtonSize;
import '../widgets/buttons/solid.button.dart' show SolidButton;
import 'colors.util.dart' show ColorsUtil;

/// Utility class for showing custom dialogs using Panara.
class DialogUtil {
  DialogUtil._();

  static void _showDialog(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String title,
    required String message,
    required String buttonText,
    required Color buttonColor,
    VoidCallback? onDismiss,
  }) {
    PanaraCustomDialog.showAnimatedFromTop(
      context,
      children: [
        Icon(icon, color: iconColor, size: context.sizing.s72),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: context.sizing.s24, fontWeight: FontWeight.bold),
        ),
        Gap(10),
        Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: context.sizing.s16),
        ),
        Gap(20),
        SolidButton(
          isFull: true,
          text: buttonText,
          size: ButtonSize.sm,
          background: buttonColor,
          onPressed: () {
            Navigator.of(context).pop();
            onDismiss?.call();
          },
        ),
      ],
      backgroundColor: context.colors.surface,
      margin: EdgeInsets.all(context.sizing.s20),
      padding: EdgeInsets.all(context.sizing.s20),
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }

  /// Shows an error dialog with a message.
  ///
  /// **Parameters:**
  /// - [context]: The build context
  /// - [message]: The error message to display
  /// - [title]: Optional custom title (defaults to "Error")
  /// - [buttonText]: Optional custom button text (defaults to "Okay")
  /// - [onDismiss]: Optional callback when dialog is dismissed
  static void error(
    BuildContext context, {
    required String message,
    String title = "Error",
    String buttonText = "Okay",
    VoidCallback? onDismiss,
  }) {
    _showDialog(
      context,
      icon: Icons.error_outline,
      iconColor: ColorsUtil.error,
      title: title,
      message: message,
      buttonText: buttonText,
      buttonColor: ColorsUtil.error,
      onDismiss: onDismiss,
    );
  }

  /// Shows a success dialog with a message.
  ///
  /// **Parameters:**
  /// - [context]: The build context
  /// - [message]: The success message to display
  /// - [title]: Optional custom title (defaults to "Success")
  /// - [buttonText]: Optional custom button text (defaults to "Okay")
  /// - [onDismiss]: Optional callback when dialog is dismissed
  static void success(
    BuildContext context, {
    required String message,
    String title = "Success",
    String buttonText = "Okay",
    VoidCallback? onDismiss,
  }) {
    _showDialog(
      context,
      icon: Icons.check_circle_outline,
      iconColor: ColorsUtil.success,
      title: title,
      message: message,
      buttonText: buttonText,
      buttonColor: ColorsUtil.success,
      onDismiss: onDismiss,
    );
  }

  /// Shows a warning dialog with a message.
  ///
  /// **Parameters:**
  /// - [context]: The build context
  /// - [message]: The warning message to display
  /// - [title]: Optional custom title (defaults to "Warning")
  /// - [buttonText]: Optional custom button text (defaults to "Okay")
  /// - [onDismiss]: Optional callback when dialog is dismissed
  static void warning(
    BuildContext context, {
    required String message,
    String title = "Warning",
    String buttonText = "Okay",
    VoidCallback? onDismiss,
  }) {
    _showDialog(
      context,
      icon: Icons.warning_amber_outlined,
      iconColor: ColorsUtil.warning,
      title: title,
      message: message,
      buttonText: buttonText,
      buttonColor: ColorsUtil.warning,
      onDismiss: onDismiss,
    );
  }

  /// Shows an info dialog with a message.
  ///
  /// **Parameters:**
  /// - [context]: The build context
  /// - [message]: The info message to display
  /// - [title]: Optional custom title (defaults to "Info")
  /// - [buttonText]: Optional custom button text (defaults to "Okay")
  /// - [onDismiss]: Optional callback when dialog is dismissed
  static void info(
    BuildContext context, {
    required String message,
    String title = "Info",
    String buttonText = "Okay",
    VoidCallback? onDismiss,
  }) {
    _showDialog(
      context,
      icon: Icons.info_outline,
      iconColor: ColorsUtil.primary,
      title: title,
      message: message,
      buttonText: buttonText,
      buttonColor: ColorsUtil.primary,
      onDismiss: onDismiss,
    );
  }
}
