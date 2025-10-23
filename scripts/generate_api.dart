// ignore_for_file: avoid_print
import 'dart:io';

/// Generates Dart API client from Swagger/OpenAPI specification using swagger_dart_code_generator.
///
/// Prerequisites:
///   - swagger_dart_code_generator added as dev dependency in pubspec.yaml
///   - build_runner added as dev dependency in pubspec.yaml
///
/// Usage:
///   dart run scripts/generate_api.dart
Future<void> main() async {
  print('🚀 Generating Dart API client using build_runner...\n');

  final result = await _runBuildRunner();

  _handleResult(result);

  // Format API documentation after generation
  if (result.exitCode == 0) {
    await _formatApiDocs();
  }
}

/// Runs build_runner to generate the API client using swagger_dart_code_generator.
///
/// The --delete-conflicting-outputs flag forces build_runner to overwrite
/// existing generated files, ensuring models are always up to date.
Future<ProcessResult> _runBuildRunner() {
  return Process.run('flutter', [
    'pub',
    'run',
    'build_runner',
    'build',
    '--delete-conflicting-outputs',
  ]);
}

/// Handles the process result and prints appropriate messages.
void _handleResult(ProcessResult result) {
  final stdout = result.stdout.toString();
  final stderr = result.stderr.toString();

  if (stdout.isNotEmpty) print(stdout);

  if (result.exitCode == 0) {
    print('\x1b[32m✔\x1b[0m API client generated successfully');
  } else {
    print('\x1b[31m✘\x1b[0m Failed to generate API client');
    if (stderr.isNotEmpty) print(stderr);
    exit(1);
  }
}

/// Formats API documentation by running the format_api_docs.dart script.
Future<void> _formatApiDocs() async {
  print('\n⌛️  Formatting API documentation...\n');

  final result = await Process.run('dart', ['run', 'scripts/format_api_docs.dart']);

  if (result.stdout.toString().isNotEmpty) {
    print(result.stdout);
  }

  if (result.exitCode != 0 && result.stderr.toString().isNotEmpty) {
    print(result.stderr);
  }
}
