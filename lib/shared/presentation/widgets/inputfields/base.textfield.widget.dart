part of 'inputfield.widget.dart';

/// Internal text field implementation for [InputField].
///
/// This private widget handles the [TextFormField] rendering with:
/// - [ValueListenableBuilder] for password visibility to minimize rebuilds
/// - Custom [InputDecoration] with error, label, and suffix icon configuration
/// - Validation callback forwarding via [onValidationError]
/// - Password obscuring with visibility toggle
///
/// ## Performance
/// Uses [ValueListenableBuilder] so only the [TextFormField] rebuilds when
/// password visibility changes, not the entire [InputField] widget tree.
///
/// ## Const Styles
/// - [_kErrorStyle]: Hides Flutter's default error text (height: 0, fontSize: 0)
/// - [_kLabelStyle]: Styles the input label (height: 0)
///
/// This class is private (part file) and should only be used by [InputField].
class _BaseTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final FocusNode focusNode;
  final bool isPassword;
  final bool isDisabled;
  final ValueNotifier<bool> isPasswordVisible;
  final String label;
  final bool filled;
  final Color? filledColor;
  final Widget? suffix;
  final bool hasError;
  final Function(String?) onValidationError;

  static const _kLabelStyle = TextStyle(height: 0);

  const _BaseTextField({
    required this.controller,
    required this.validator,
    required this.focusNode,
    required this.isPassword,
    required this.isDisabled,
    required this.isPasswordVisible,
    required this.label,
    required this.filled,
    required this.filledColor,
    required this.suffix,
    required this.hasError,
    required this.onValidationError,
  });

  /// Builds the text field with [ValueListenableBuilder] for password visibility.
  ///
  /// Uses [ValueListenableBuilder] to rebuild only when [isPasswordVisible] changes,
  /// preventing unnecessary rebuilds of the entire widget tree.
  ///
  /// The [TextFormField] is configured with:
  /// - Validation that forwards errors via [onValidationError] callback
  /// - Password obscuring based on [isPassword] and [isVisible]
  /// - Dynamic suffix icon (error icon, password toggle, or custom)
  /// - Custom [InputDecoration] with no borders (handled by parent)
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isPasswordVisible,
      builder: (context, isVisible, child) => TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.disabled,
        validator: (value) {
          final error = validator?.call(value);
          WidgetsBinding.instance.addPostFrameCallback((_) => onValidationError(error));
          return error;
        },
        focusNode: focusNode,
        autocorrect: !isPassword,
        enableSuggestions: !isPassword,
        obscureText: isPassword && !isVisible,
        style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          filled: filled,
          enabled: !isDisabled,
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          fillColor: filled ? filledColor : null,
          label: Text(label, style: _kLabelStyle),
          errorStyle: const TextStyle(height: 0.01, fontSize: 0),
          labelStyle: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
          floatingLabelStyle: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: hasError ? context.colors.error : context.primaryColor,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: context.sizing.s10,
            horizontal: context.sizing.s12,
          ),
          suffixIcon: hasError
              ? Icon(Icons.error_outline, color: context.colors.error, size: context.sizing.s20)
              : isPassword
              ? VisibleIconButton(
                  isPasswordVisible: isVisible,
                  onPressed: () => isPasswordVisible.value = !isPasswordVisible.value,
                )
              : suffix,
        ),
      ),
    );
  }
}
