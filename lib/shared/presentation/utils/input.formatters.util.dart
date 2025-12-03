import 'package:flutter/services.dart';

/// Custom formatter to prevent phone numbers from starting with zero.
///
/// This formatter rejects any input that would result in the text
/// starting with '0', ensuring phone numbers begin with digits 1-9.
///
class NoLeadingZeroFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.startsWith('0')) {
      return oldValue;
    }
    return newValue;
  }
}
