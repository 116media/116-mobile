part of 'otppinfield.widget.dart';

/// Internal text field implementation for [OtpPinField].
///
/// This private widget handles individual OTP box [TextFormField] rendering with:
/// - Single character numeric input
/// - Keyboard listener for backspace navigation
/// - Auto-advance on input
/// - Disabled state support
///
/// This class is private (part file) and should only be used by [OtpPinFieldState].
class _BaseTextField extends StatelessWidget {
  final int index;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isDisabled;
  final void Function(String) onChanged;
  final void Function(KeyEvent) onKeyEvent;

  const _BaseTextField({
    required this.index,
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
          style: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w600),
          decoration: const InputDecoration(
            counterText: '',
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
