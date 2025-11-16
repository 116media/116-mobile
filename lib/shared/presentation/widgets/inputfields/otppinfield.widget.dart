import 'dart:math' show min;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../animations/border.animation.dart' show BorderAnimation;
import '../../themes/extensions/build.context.extension.dart';
import '../../utils/colors.util.dart' show ColorsUtil;

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
///
/// ## Performance Optimizations
/// - Individual [AnimationController] per box for smooth animations
/// - Fail-fast patterns with early returns
/// - Efficient paste handling with digit filtering
/// - Minimal rebuilds using [AnimatedBuilder]
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
  /// Number of OTP boxes to display
  final int length;

  /// Callback when all boxes are filled
  final void Function(String)? onCompleted;

  /// Validator function for the complete OTP
  final String? Function(String?)? validator;

  /// Whether the field is disabled (during verification)
  final bool isDisabled;

  const OtpPinField({
    super.key,
    this.length = 6,
    this.onCompleted,
    this.validator,
    this.isDisabled = false,
  });

  @override
  State<OtpPinField> createState() => OtpPinFieldState();
}

/// State class for [OtpPinField].
///
/// Exposed publicly to allow external control via GlobalKey,
/// primarily for the [clear] method to reset the field.
class OtpPinFieldState extends State<OtpPinField> with TickerProviderStateMixin {
  late final List<TextEditingController> _controllers;
  late final List<FocusNode> _focusNodes;
  late final List<AnimationController> _animationControllers;
  late final List<Animation<double>> _animations;

  String? _errorText;

  @override
  void initState() {
    super.initState();
    _initializeControllers();
    _setupFocusListeners();
    _scheduleAutoFocus();
  }

  /// Initialize all controllers, focus nodes, and animations
  void _initializeControllers() {
    _controllers = List.generate(widget.length, (_) => TextEditingController());
    _focusNodes = List.generate(widget.length, (_) => FocusNode());
    _animationControllers = List.generate(
      widget.length,
      (_) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 400),
      ),
    );
    _animations = _animationControllers
        .map((controller) => Tween(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(parent: controller, curve: Curves.easeInOut),
            ))
        .toList();
  }

  /// Setup focus listeners for border animations
  void _setupFocusListeners() {
    for (int i = 0; i < widget.length; i++) {
      _focusNodes[i].addListener(() {
        if (_focusNodes[i].hasFocus) {
          _animationControllers[i].forward();
          return;
        }
        _animationControllers[i].reverse();
      });
    }
  }

  /// Schedule auto-focus on first box after build
  void _scheduleAutoFocus() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (widget.isDisabled) return;
      _focusNodes[0].requestFocus();
    });
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    for (var animationController in _animationControllers) {
      animationController.dispose();
    }
    super.dispose();
  }

  /// Handles input change - detects paste or single digit
  void _onChanged(String value, int index) {
    // Paste detected - handle multi-character input
    if (value.length > 1) {
      _handlePaste(value, index);
      return;
    }

    // Empty input - do nothing (backspace handled by KeyboardListener)
    if (value.isEmpty) return;

    // Last box - unfocus and check completion
    if (index == widget.length - 1) {
      _focusNodes[index].unfocus();
      _checkCompletion();
      return;
    }

    // Move to next box
    _focusNodes[index + 1].requestFocus();
  }

  /// Handles backspace key to navigate to previous box
  void _onKeyEvent(KeyEvent event, int index) {
    // Only handle backspace key down
    if (event is! KeyDownEvent) return;
    if (event.logicalKey != LogicalKeyboardKey.backspace) return;

    // Current box not empty - let default behavior handle it
    if (_controllers[index].text.isNotEmpty) return;

    // First box - nowhere to go back
    if (index == 0) return;

    // Move to previous box
    _focusNodes[index - 1].requestFocus();
  }

  /// Handles paste - distributes digits across boxes from start index
  void _handlePaste(String pastedText, int startIndex) {
    // Extract only digits
    final digits = pastedText.replaceAll(RegExp(r'\D'), '');
    if (digits.isEmpty) return;

    // Calculate how many boxes we can fill
    final availableBoxes = widget.length - startIndex;
    final digitsToFill = min(digits.length, availableBoxes);

    // Fill boxes with digits
    for (int i = 0; i < digitsToFill; i++) {
      _controllers[startIndex + i].text = digits[i];
    }

    // All boxes filled - unfocus and check completion
    if (digitsToFill >= availableBoxes) {
      _focusNodes[widget.length - 1].unfocus();
      _checkCompletion();
      return;
    }

    // Not all filled - focus next empty box
    _focusNodes[startIndex + digitsToFill].requestFocus();
  }

  /// Checks if OTP is complete and triggers callback
  void _checkCompletion() {
    final otp = _getOtpValue();

    // Not complete - do nothing
    if (otp.length != widget.length) return;

    // Validate if validator provided
    if (widget.validator != null) {
      final error = widget.validator!(otp);
      if (mounted) {
        setState(() => _errorText = error);
      }
      // Validation failed - don't call onCompleted
      if (error != null) return;
    }

    // Trigger completion callback
    widget.onCompleted?.call(otp);
  }

  /// Gets the complete OTP value from all boxes
  String _getOtpValue() {
    return _controllers.map((controller) => controller.text).join();
  }

  /// Clears all boxes and refocuses first box
  void clear() {
    for (var controller in _controllers) {
      controller.clear();
    }
    if (!mounted) return;

    setState(() => _errorText = null);
    _focusNodes[0].requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final hasError = _errorText != null && _errorText!.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: context.sizing.s8,
          children: List.generate(widget.length, (index) {
            return _buildPinBox(context, index, hasError);
          }),
        ),
        if (hasError)
          Padding(
            padding: EdgeInsets.only(top: context.sizing.s8),
            child: Text(
              _errorText!,
              style: context.textTheme.bodySmall?.copyWith(
                fontSize: context.sizing.s12,
                color: context.colors.error,
              ),
            ),
          ),
      ],
    );
  }

  /// Builds individual OTP pin box with border animation
  Widget _buildPinBox(BuildContext context, int index, bool hasError) {
    final borderWidth = hasError ? 2.0 : 1.0;
    final outerRadius = context.sizing.s8;
    final innerRadius = outerRadius - borderWidth;

    return AnimatedBuilder(
      animation: _animations[index],
      builder: (context, child) {
        final isFocused = _focusNodes[index].hasFocus;
        final borderColor = _getBorderColor(context, hasError, isFocused);

        return CustomPaint(
          painter: BorderAnimation(_animations[index].value),
          child: Container(
            width: context.sizing.s48,
            height: context.sizing.s56,
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
      child: _buildTextField(context, index),
    );
  }

  /// Builds the text field for a pin box
  Widget _buildTextField(BuildContext context, int index) {
    return Center(
      child: KeyboardListener(
        focusNode: FocusNode(),
        onKeyEvent: (event) => _onKeyEvent(event, index),
        child: TextField(
          controller: _controllers[index],
          focusNode: _focusNodes[index],
          enabled: !widget.isDisabled,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          style: context.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: '',
            contentPadding: EdgeInsets.zero,
          ),
          onChanged: (value) => _onChanged(value, index),
        ),
      ),
    );
  }

  /// Gets border color based on state (error > focus > default)
  Color _getBorderColor(BuildContext context, bool hasError, bool isFocused) {
    if (hasError) return context.colors.error;
    if (isFocused) return Colors.transparent;
    return ColorsUtil.slate300;
  }
}
