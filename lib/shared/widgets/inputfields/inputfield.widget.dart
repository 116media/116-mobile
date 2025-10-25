import 'package:flutter/material.dart';

import '../../themes/extensions/build.context.extension.dart';
import '../../animations/border.animation.dart' show BorderAnimation;
import '../../utils/colors.util.dart' show ColorsUtil;
import '../buttons/visible.icon.button.dart' show VisibleIconButton;

/// A customizable text input field with animated border and optional password visibility toggle.
///
/// This widget provides a styled TextField with:
/// - Animated border that activates on focus (using [BorderAnimation])
/// - Optional filled background
/// - Built-in password visibility toggle for password fields
/// - Custom suffix icon support
class InputField extends StatefulWidget {
  final String label;
  final Widget? suffix;
  final bool filled;
  final Color? filledColor;
  final bool isPassword;

  InputField({
    super.key,
    required this.label,
    this.suffix,
    this.filled = false,
    this.isPassword = false,
    Color? filledColor,
  }) : filledColor = filledColor ?? ColorsUtil.white.withValues(alpha: 0.7);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> with SingleTickerProviderStateMixin {
  late bool _isPasswordVisible;
  late Animation<double> alpha;

  AnimationController? controller;
  final FocusNode focusNode = FocusNode();

  /// Initializes the animation controller and focus listener.
  ///
  /// Sets up:
  /// - Password visibility state (initially hidden for password fields)
  /// - Animation controller with 400ms duration
  /// - Alpha animation (0.0 → 1.0) with easeInOut curve for border animation
  /// - Focus listener that triggers border animation on focus/blur
  @override
  void initState() {
    super.initState();
    _isPasswordVisible = !widget.isPassword;

    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 400));

    final Animation<double> curve = CurvedAnimation(parent: controller!, curve: Curves.easeInOut);

    alpha = Tween(begin: 0.0, end: 1.0).animate(curve);

    controller?.addListener(() {
      setState(() {});
    });

    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        controller?.forward();
      } else {
        controller?.reverse();
      }
    });
  }

  /// Builds the input field with animated border and optional password toggle.
  ///
  /// The animated border appears when the field gains focus and disappears when it loses focus.
  /// For password fields, a [VisibleIconButton] is automatically added as the suffix icon.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsUtil.gray400),
        borderRadius: BorderRadius.all(Radius.circular(context.sizing.s8)),
      ),
      child: CustomPaint(
        painter: BorderAnimation(alpha.value),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(context.sizing.s8)),
          child: TextField(
            focusNode: focusNode,
            autocorrect: !widget.isPassword,
            enableSuggestions: !widget.isPassword,
            obscureText: widget.isPassword && !_isPasswordVisible,
            style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: widget.filled,
              label: Text(widget.label, style: const TextStyle(height: 0)),
              fillColor: widget.filled ? widget.filledColor : null,
              labelStyle: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
              floatingLabelStyle: context.textTheme.bodyMedium?.copyWith(
                color: context.primaryColor,
                fontWeight: FontWeight.w500,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: context.sizing.s10,
                horizontal: context.sizing.s12,
              ),
              suffixIcon: widget.isPassword
                  ? VisibleIconButton(
                      isPasswordVisible: _isPasswordVisible,
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )
                  : widget.suffix,
            ),
          ),
        ),
      ),
    );
  }
}
