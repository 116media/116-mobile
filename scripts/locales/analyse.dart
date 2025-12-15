import 'dart:io';

/// Translation analysis script for the 116 mobile app.
///
/// This script runs slang analyze to check for:
/// - Missing translations across locales
/// - Unused translation keys
/// - Translation coverage statistics
///
/// Usage:
///   dart run scripts/translate.dart
void main(List<String> arguments) async {
  print('');
  print('🌍 Running translation analysis...');
  print('');

  // Run slang analyze with output directory
  final result = await Process.run('dart', ['run', 'slang', 'analyze', '--outdir=lib/i18n']);

  // Print output
  if (result.stdout.toString().isNotEmpty) {
    print(result.stdout);
  }

  if (result.stderr.toString().isNotEmpty) {
    print(result.stderr);
  }

  // Exit with the same code as slang analyze
  exit(result.exitCode);
}
