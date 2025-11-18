part of 'otppinfield.widget.dart';

/// Internal text field implementation for [OtpPinField].
///
/// This private widget handles individual OTP box [TextFormField] rendering with:
/// - Single character numeric input
/// - Keyboard listener for backspace navigation
/// - Auto-advance on input
/// - Disabled state support
/// - Optional filled background
///
/// This class is private (part file) and should only be used by [OtpPinFieldState].
class _BaseTextField extends StatelessWidget {
  final int index;
  final bool filled;
  final Color? filledColor;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isDisabled;
  final void Function(String) onChanged;
  final void Function(KeyEvent) onKeyEvent;

  const _BaseTextField({
    required this.index,
    required this.filled,
    required this.filledColor,
    required this.controller,
    required this.focusNode,
    required this.isDisabled,
    required this.onChanged,
    required this.onKeyEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: KeyboardListener(
        focusNode: FocusNode(),
        onKeyEvent: onKeyEvent,
        child: TextFormField(
          maxLength: 1,
          enabled: !isDisabled,
          textAlign: TextAlign.center,
          focusNode: focusNode,
          controller: controller,
          keyboardType: TextInputType.number,
          onChanged: onChanged,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            filled: filled,
            fillColor: filledColor,
            counterText: '',
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              vertical: context.sizing.s10,
              horizontal: context.sizing.s12,
            ),
          ),
        ),
      ),
    );
  }
}
