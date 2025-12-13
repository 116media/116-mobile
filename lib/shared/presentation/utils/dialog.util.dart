import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;
import 'package:panara_dialogs/panara_dialogs.dart' show PanaraCustomDialog;

import '../../../i18n/strings.g.dart';
import '../themes/extensions/build.context.extension.dart';
import '../widgets/buttons/enums/button.size.enum.dart' show ButtonSize;
import '../widgets/buttons/solid.button.dart' show SolidButton;
import '../widgets/buttons/outline.button.dart' show OutlineButton;
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
        Gap(context.sizing.s10),
        Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: context.sizing.s16),
        ),
        Gap(context.sizing.s20),
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
  /// - [title]: Optional custom title (defaults to translated "Error")
  /// - [buttonText]: Optional custom button text (defaults to translated "OK")
  /// - [onDismiss]: Optional callback when dialog is dismissed
  static void error(
    BuildContext context, {
    required String message,
    String? title,
    String? buttonText,
    VoidCallback? onDismiss,
  }) {
    final t = context.t;
    _showDialog(
      context,
      icon: Icons.error_outline,
      iconColor: ColorsUtil.error,
      title: title ?? t.shared.common.error,
      message: message,
      buttonText: buttonText ?? t.shared.common.ok,
      buttonColor: ColorsUtil.error,
      onDismiss: onDismiss,
    );
  }

  /// Shows a success dialog with a message.
  ///
  /// **Parameters:**
  /// - [context]: The build context
  /// - [message]: The success message to display
  /// - [title]: Optional custom title (defaults to translated "Success")
  /// - [buttonText]: Optional custom button text (defaults to translated "OK")
  /// - [onDismiss]: Optional callback when dialog is dismissed
  static void success(
    BuildContext context, {
    required String message,
    String? title,
    String? buttonText,
    VoidCallback? onDismiss,
  }) {
    final t = context.t;
    _showDialog(
      context,
      icon: Icons.check_circle_outline,
      iconColor: ColorsUtil.success,
      title: title ?? t.shared.common.success,
      message: message,
      buttonText: buttonText ?? t.shared.common.ok,
      buttonColor: ColorsUtil.success,
      onDismiss: onDismiss,
    );
  }

  /// Shows a warning dialog with a message.
  ///
  /// **Parameters:**
  /// - [context]: The build context
  /// - [message]: The warning message to display
  /// - [title]: Optional custom title (defaults to translated "Warning")
  /// - [buttonText]: Optional custom button text (defaults to translated "OK")
  /// - [onDismiss]: Optional callback when dialog is dismissed
  static void warning(
    BuildContext context, {
    required String message,
    String? title,
    String? buttonText,
    VoidCallback? onDismiss,
  }) {
    final t = context.t;
    _showDialog(
      context,
      icon: Icons.warning_amber_outlined,
      iconColor: ColorsUtil.warning,
      title: title ?? t.shared.common.warning,
      message: message,
      buttonText: buttonText ?? t.shared.common.ok,
      buttonColor: ColorsUtil.warning,
      onDismiss: onDismiss,
    );
  }

  /// Shows an info dialog with a message.
  ///
  /// **Parameters:**
  /// - [context]: The build context
  /// - [message]: The info message to display
  /// - [title]: Optional custom title (defaults to translated "Info")
  /// - [buttonText]: Optional custom button text (defaults to translated "OK")
  /// - [onDismiss]: Optional callback when dialog is dismissed
  static void info(
    BuildContext context, {
    required String message,
    String? title,
    String? buttonText,
    VoidCallback? onDismiss,
  }) {
    final t = context.t;
    _showDialog(
      context,
      message: message,
      icon: Icons.info_outline,
      iconColor: ColorsUtil.primary,
      buttonColor: ColorsUtil.primary,
      title: title ?? t.shared.common.info,
      buttonText: buttonText ?? t.shared.common.ok,
      onDismiss: onDismiss,
    );
  }

  /// Shows a confirmation dialog with confirm and cancel buttons.
  ///
  /// This dialog slides in from the bottom with custom styling.
  ///
  /// **Parameters:**
  /// - [context]: The build context
  /// - [message]: The confirmation message to display
  /// - [title]: Optional custom title (defaults to translated "Confirm")
  /// - [confirmText]: Text for confirm button (defaults to translated "Confirm")
  /// - [cancelText]: Text for cancel button (defaults to translated "Cancel")
  /// - [icon]: Optional icon to display
  /// - [iconColor]: Color for the icon (defaults to primary color)
  /// - [confirmColor]: Color for confirm button (defaults to primary color)
  /// - [cancelColor]: Color for cancel button border and text
  /// - [onConfirm]: Callback when confirm is tapped
  /// - [onCancel]: Optional callback when cancel is tapped
  static void confirm(
    BuildContext context, {
    required String message,
    String? title,
    String? confirmText,
    String? cancelText,
    IconData? icon,
    Color? iconColor,
    Color? confirmColor,
    Color? cancelColor,
    required VoidCallback onConfirm,
    VoidCallback? onCancel,
  }) {
    final t = context.t;
    PanaraCustomDialog.showAnimatedFromBottom(
      context,
      children: [
        if (icon != null) ...[
          Icon(icon, color: iconColor ?? ColorsUtil.primary, size: context.sizing.s72),
          Gap(context.sizing.s12),
        ],
        Text(
          textAlign: TextAlign.center,
          title ?? t.shared.common.confirm,
          style: TextStyle(fontSize: context.sizing.s24, fontWeight: FontWeight.bold),
        ),
        Gap(context.sizing.s10),
        Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: context.sizing.s16),
        ),
        Gap(context.sizing.s20),
        Row(
          children: [
            Expanded(
              child: OutlineButton(
                color: cancelColor,
                size: ButtonSize.sm,
                text: cancelText ?? t.shared.common.cancel,
                onPressed: () {
                  Navigator.of(context).pop();
                  onCancel?.call();
                },
              ),
            ),
            Gap(context.sizing.s10),
            Expanded(
              child: SolidButton(
                size: ButtonSize.sm,
                text: confirmText ?? t.shared.common.confirm,
                background: confirmColor ?? ColorsUtil.primary,
                onPressed: () {
                  Navigator.of(context).pop();
                  onConfirm();
                },
              ),
            ),
          ],
        ),
      ],
      backgroundColor: context.colors.surface,
      margin: EdgeInsets.all(context.sizing.s20),
      padding: EdgeInsets.all(context.sizing.s20),
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}
