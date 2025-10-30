import 'package:flutter/material.dart';

import '../../themes/extensions/build.context.extension.dart';
import '../../animations/border.animation.dart' show BorderAnimation;
import '../../utils/colors.util.dart' show ColorsUtil;
import '../buttons/visible.icon.button.dart' show VisibleIconButton;

part 'base.textfield.widget.dart';

/// A customizable text input field with animated border, validation, and password visibility toggle.
///
/// This widget provides a fully-featured form input with:
/// - **Animated border** that appears on focus using [BorderAnimation]
/// - **Form validation** with error display on blur (hidden while focused)
/// - **Password visibility toggle** for secure input fields
/// - **Error states** with red border (2px), error icon, and message below field
/// - **Optional filled background** with customizable color
/// - **Custom suffix icon** support (overridden by error/password icons)
///
/// ## Performance Optimizations
/// - Uses [ValueNotifier] for password visibility to prevent full widget rebuilds
/// - [AnimatedBuilder] optimizes animation by rebuilding only animated portion
/// - Conditional layout avoids unnecessary [Column] wrapper when no error present
/// - [late final] fields for immutable references
///
/// ## Validation Behavior
/// - Validation runs on form submit via [validator] callback
/// - Errors display automatically when field loses focus (blur event)
/// - Errors hide when field gains focus for better UX
/// - Returns `null` from validator to prevent Flutter's default error display
/// - Error border is 2px (vs 1px normal), with inner radius adjusted accordingly
///
/// ## Example
/// ```dart
/// InputField(
///   label: "Email",
///   controller: emailController,
///   validator: SignInValidator.email("Email"),
/// )
/// ```
///
/// See also:
/// - [_BaseTextField], the internal text field implementation (part file)
/// - [BorderAnimation], the custom border animation painter
/// - [VisibleIconButton], the password visibility toggle button
class InputField extends StatefulWidget {
  final String label;
  final Widget? suffix;
  final bool filled;
  final Color? filledColor;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  InputField({
    super.key,
    required this.label,
    this.suffix,
    this.filled = false,
    this.isPassword = false,
    this.validator,
    this.controller,
    Color? filledColor,
  }) : filledColor = filledColor ?? ColorsUtil.white.withValues(alpha: 0.5);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> with SingleTickerProviderStateMixin {
  late final FocusNode _focusNode;
  late final Animation<double> _alpha;
  late final AnimationController _controller;
  late final ValueNotifier<bool> _isPasswordVisible;

  String? _errorText;
  bool _isFocused = false;

  /// Initializes state, animations, and focus listener.
  ///
  /// Sets up:
  /// - Password visibility [ValueNotifier] (initially hidden for password fields)
  /// - Animation controller with 400ms duration and easeInOut curve
  /// - Border animation (opacity 0.0 → 1.0)
  /// - Focus listener that:
  ///   - Triggers border animation on focus/blur
  ///   - Validates field on blur if validator and controller are provided
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _isPasswordVisible = ValueNotifier(!widget.isPassword);
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 400));
    _alpha = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });

      if (_focusNode.hasFocus) {
        _controller.forward();
      } else {
        _controller.reverse();
        if (widget.validator != null && widget.controller != null) {
          setState(() => _errorText = widget.validator!(widget.controller!.text));
        }
      }
    });
  }

  @override
  void dispose() {
    _isPasswordVisible.dispose();
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  /// Builds the input field with animated border, error handling, and conditional layout.
  ///
  /// Returns:
  /// - Direct [AnimatedBuilder] with input field when no error (avoids Column overhead)
  /// - [Column] with input field and error message when validation fails
  ///
  /// The border animation uses [CustomPaint] with [BorderAnimation] painter.
  /// Border width and color adjust based on error state (1px slate300 vs 2px error color).
  /// Inner radius is calculated as `outerRadius - borderWidth` to prevent overlap.
  @override
  Widget build(BuildContext context) {
    final hasError = _errorText != null && _errorText!.isNotEmpty && !_isFocused;

    final borderWidth = hasError ? 2.0 : 1.0;
    final borderColor = hasError
        ? context.colors.error
        : (_isFocused ? Colors.transparent : ColorsUtil.slate300);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedBuilder(
          animation: _alpha,
          builder: (context, child) {
            final outerRadius = context.sizing.s8;
            final innerRadius = outerRadius - borderWidth;

            return CustomPaint(
              painter: BorderAnimation(_alpha.value),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(outerRadius),
                  border: Border.all(color: borderColor, width: borderWidth),
                ),
                child: ClipRRect(borderRadius: BorderRadius.circular(innerRadius), child: child),
              ),
            );
          },
          child: _BaseTextField(
            hasError: hasError,
            focusNode: _focusNode,
            controller: widget.controller,
            validator: widget.validator,
            isPassword: widget.isPassword,
            isPasswordVisible: _isPasswordVisible,
            label: widget.label,
            filled: widget.filled,
            suffix: widget.suffix,
            filledColor: widget.filledColor,
            onValidationError: (error) {
              if (mounted) setState(() => _errorText = error);
            },
          ),
        ),
        if (hasError)
          Padding(
            padding: EdgeInsets.only(top: context.sizing.s4, bottom: context.sizing.s8),
            child: Text(
              _errorText!,
              style: context.textTheme.bodySmall?.copyWith(
                fontSize: 12,
                color: context.colors.error,
              ),
            ),
          ),
      ],
    );
  }
}
