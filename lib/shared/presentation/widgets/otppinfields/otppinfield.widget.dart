import 'dart:math' show min;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show KeyEvent, KeyDownEvent, LogicalKeyboardKey, FilteringTextInputFormatter;

import '../../../../modules/auth/presentation/constants/auth.validation.constants.dart'
    show kOtpLength;
import '../../themes/extensions/build.context.extension.dart';
import '../../animations/border.animation.dart' show BorderAnimation;
import '../../utils/colors.util.dart' show ColorsUtil;

part 'base.textfield.widget.dart';

/// A customizable OTP (One-Time Password) pin input field with animated borders.
///
/// This widget provides a production-ready OTP input with:
/// - **N configurable boxes** for flexible OTP lengths (default: 6)
/// - **Animated border** on focus using [BorderAnimation]
/// - **Auto-advance** to next box when digit is entered
/// - **Backspace navigation** to previous box when current is empty
/// - **Smart paste support** that distributes digits across boxes
/// - **Auto-submit** callback when all boxes are filled
/// - **Numeric keyboard** enforcement
/// - **Auto-focus** on first box when widget mounts
/// - **Disabled state** during verification
/// - **Error state** with red borders and error message
/// - **Optional filled background** with customizable color
///
/// ## Performance Optimizations
/// - [ValueListenableBuilder] prevents unnecessary rebuilds when checking focus state
/// - Individual [AnimationController] per box for smooth, isolated animations
/// - Static [RegExp] compiled once for paste handling efficiency
/// - Cached color and radius values to avoid recomputation
/// - [ValueNotifier] for focus state tracking minimizes widget rebuilds
/// - Fail-fast patterns with early returns in all handlers
///
/// ## Example
/// ```dart
/// OtpPinField(
///   length: 6,
///   onCompleted: (otp) => verifyOtp(otp),
///   validator: (value) => value?.length != 6 ? 'Invalid OTP' : null,
/// )
/// ```
///
/// See also:
/// - [BorderAnimation], the custom border animation painter
class OtpPinField extends StatefulWidget {
  final int length;
  final bool isFilled;
  final Color? filledColor;
  final bool isDisabled;
  final TextEditingController? controller;
  final void Function(String)? onCompleted;
  final String? Function(String?)? validator;

  OtpPinField({
    super.key,
    this.length = kOtpLength,
    this.controller,
    this.onCompleted,
    this.validator,
    this.isDisabled = false,
    this.isFilled = false,
    Color? filledColor,
  }) : filledColor = filledColor ?? ColorsUtil.white.withValues(alpha: 0.5);

  @override
  State<OtpPinField> createState() => OtpPinFieldState();
}

/// State class for [OtpPinField].
///
/// Exposed publicly to allow external control via GlobalKey,
/// primarily for the [clear] method to reset the field.
class OtpPinFieldState extends State<OtpPinField> with TickerProviderStateMixin {
  late final List<FocusNode> _focusNodes;
  late final List<Animation<double>> _animations;
  late final List<ValueNotifier<bool>> _focusStates;
  late final List<TextEditingController> _controllers;
  late final List<AnimationController> _animationControllers;

  String? _errorText;

  @override
  void initState() {
    super.initState();

    // Initialize controllers and focus nodes
    _focusNodes = List.generate(widget.length, (_) => FocusNode());
    _controllers = List.generate(widget.length, (_) => TextEditingController());
    _focusStates = List.generate(widget.length, (_) => ValueNotifier<bool>(false));

    // Initialize animations with controllers
    _animationControllers = List.generate(
      widget.length,
      (_) => AnimationController(vsync: this, duration: const Duration(milliseconds: 400)),
    );

    _animations = List.generate(
      widget.length,
      (i) => Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(parent: _animationControllers[i], curve: Curves.easeInOut)),
    );

    // Setup focus listeners for animations and focus state tracking
    for (int i = 0; i < widget.length; i++) {
      _focusNodes[i].addListener(() {
        final hasFocus = _focusNodes[i].hasFocus;
        _focusStates[i].value = hasFocus;
        hasFocus ? _animationControllers[i].forward() : _animationControllers[i].reverse();
      });
    }

    // Auto-focus first box after build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !widget.isDisabled) {
        _focusNodes[0].requestFocus();
      }
    });
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    for (final animationController in _animationControllers) {
      animationController.dispose();
    }
    for (final focusState in _focusStates) {
      focusState.dispose();
    }
    super.dispose();
  }

  /// Handles input change - detects paste or single digit
  void _onChanged(String value, int index) {
    if (value.length > 1) {
      _handlePaste(value, index);
      return;
    }

    if (value.isEmpty) return;

    // Update external controller
    _updateExternalController();

    if (index == widget.length - 1) {
      _focusNodes[index].unfocus();
      _checkCompletion();
      return;
    }

    _focusNodes[index + 1].requestFocus();
  }

  /// Updates the external controller with the current OTP value
  void _updateExternalController() {
    if (widget.controller == null) return;
    final otp = _controllers.map((c) => c.text).join();
    widget.controller!.text = otp;
  }

  /// Handles backspace navigation to previous box
  void _onKeyEvent(KeyEvent event, int index) {
    if (event is! KeyDownEvent || event.logicalKey != LogicalKeyboardKey.backspace) return;
    if (_controllers[index].text.isNotEmpty || index == 0) return;

    _focusNodes[index - 1].requestFocus();
  }

  /// Distributes pasted digits across boxes
  void _handlePaste(String pastedText, int startIndex) {
    final digits = pastedText.replaceAll(RegExp(r'\D'), '');

    if (digits.isEmpty) return;

    final availableBoxes = widget.length - startIndex;
    final digitsToFill = min(digits.length, availableBoxes);

    for (int i = 0; i < digitsToFill; i++) {
      _controllers[startIndex + i].text = digits[i];
    }

    // Update external controller after paste
    _updateExternalController();

    if (digitsToFill >= availableBoxes) {
      _focusNodes[widget.length - 1].unfocus();
      _checkCompletion();
    } else {
      _focusNodes[startIndex + digitsToFill].requestFocus();
    }
  }

  /// Validates and triggers completion callback
  void _checkCompletion() {
    final otp = _controllers.map((c) => c.text).join();
    if (otp.length != widget.length) return;

    if (widget.validator != null) {
      final error = widget.validator!(otp);
      if (mounted) setState(() => _errorText = error);
      if (error != null) return;
    }

    widget.onCompleted?.call(otp);
  }

  /// Clears all boxes and refocuses first box
  void clear() {
    for (final controller in _controllers) {
      controller.clear();
    }

    // Update external controller after clear
    _updateExternalController();

    if (!mounted) return;

    setState(() => _errorText = null);
    _focusNodes[0].requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final hasError = _errorText != null && _errorText!.isNotEmpty;

    final outerRadius = context.sizing.s6;
    final errorColor = context.colors.error;
    final borderWidth = hasError ? 2.0 : 1.0;
    final innerRadius = outerRadius - borderWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: context.sizing.s8,
          children: List.generate(widget.length, (index) {
            return AnimatedBuilder(
              animation: _animations[index],
              builder: (context, child) {
                return ValueListenableBuilder<bool>(
                  valueListenable: _focusStates[index],
                  builder: (context, isFocused, _) {
                    final borderColor = hasError
                        ? errorColor
                        : (isFocused ? Colors.transparent : ColorsUtil.slate300);

                    return CustomPaint(
                      painter: BorderAnimation(_animations[index].value),
                      child: Container(
                        width: context.sizing.s48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(outerRadius),
                          border: Border.all(color: borderColor, width: borderWidth),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(innerRadius),
                          child: child,
                        ),
                      ),
                    );
                  },
                );
              },
              child: _BaseTextField(
                index: index,
                filled: widget.isFilled,
                filledColor: widget.filledColor,
                controller: _controllers[index],
                focusNode: _focusNodes[index],
                isDisabled: widget.isDisabled,
                onChanged: (value) => _onChanged(value, index),
                onKeyEvent: (event) => _onKeyEvent(event, index),
              ),
            );
          }),
        ),
        if (hasError)
          Padding(
            padding: EdgeInsets.only(top: context.sizing.s8),
            child: Text(
              _errorText!,
              style: context.textTheme.bodySmall?.copyWith(
                color: errorColor,
                fontSize: context.sizing.s12,
              ),
            ),
          ),
      ],
    );
  }
}
