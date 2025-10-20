// ignore_for_file: avoid_print
import 'dart:io';

/// Formats API documentation by removing excessive blank lines and leading spaces.
///
/// This script processes generated Swagger files and:
///   - Removes all leading spaces from each line
///   - Removes blank lines between consecutive bullet points
///   - Adds blank line before markdown headers (**Header:**)
///   - Preserves blank line after headers
///   - Removes leading and trailing empty lines
///
/// The files are overwritten in place with the formatted content.
///
/// Usage:
///   dart run scripts/format_api_docs.dart
Future<void> main() async {
  const files = [
    './lib/api/client/api_116.swagger.dart',
    './lib/api/client/api_116.swagger.chopper.dart',
  ];

  print('📝 Formatting API documentation...');

  for (final path in files) {
    final file = File(path);
    if (!file.existsSync()) continue;

    final content = await file.readAsString();
    final formatted = content.replaceAllMapped(
      RegExp(r"'''(.*?)'''", multiLine: true, dotAll: true),
      (m) => "'''${_format(m.group(1)!)}'''",
    );

    await file.writeAsString(formatted);
  }

  print('\x1b[32m✔\x1b[0m API documentation formatted successfully');
}

/// Formats a description block by cleaning up whitespace.
String _format(String text) {
  final lines = text.split('\n');
  final result = <String>[];
  var wasEmpty = true;
  var wasBullet = false;
  var wasHeader = false;

  for (final line in lines) {
    final trimmed = line.trim();

    if (result.isEmpty && trimmed.isEmpty) continue;

    if (trimmed.isEmpty) {
      // Add blank line only after headers or between non-bullet sections
      if (wasHeader || (result.isNotEmpty && !wasBullet && !wasEmpty)) result.add('');

      wasEmpty = true;
      continue;
    }

    final isBullet = trimmed.startsWith('-');
    final isHeader = trimmed.endsWith(':') || trimmed.endsWith(':**');
    final isMarkdown = trimmed.startsWith('**') && trimmed.endsWith(':**');
    final isBoldBullet = isBullet && trimmed.contains('**');

    // Add blank line before markdown headers or regular headers after bullets
    // But NOT before bold bullets like "- **Email Verification**: ..."
    if (result.isNotEmpty &&
        ((isMarkdown && !wasEmpty) || (isHeader && !isBoldBullet && wasBullet))) {
      result.add('');
    }

    result.add(trimmed);
    wasEmpty = false;
    wasBullet = isBullet;
    wasHeader = isHeader;
  }

  while (result.isNotEmpty && result.last.isEmpty) {
    result.removeLast();
  }

  return result.join('\n');
}
