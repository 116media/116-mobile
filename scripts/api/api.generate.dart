// ignore_for_file: avoid_print
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_status/http_status.dart' show HttpStatusCode;

import 'constants.dart'
    show kApiBaseUrl, kApiDocsFormatPath, kSwaggerEndpoint, kConnectionTimeoutSeconds;

/// Generates Dart API client from Swagger/OpenAPI specification using swagger_dart_code_generator.
///
/// Prerequisites:
///   - swagger_dart_code_generator added as dev dependency in pubspec.yaml
///   - build_runner added as dev dependency in pubspec.yaml
///   - Backend server running at the configured URL
///
/// Usage:
///   dart run scripts/generate_api.dart
Future<void> main() async {
  print('🚀 Generating Dart API client using build_runner...\n');

  // Check if backend is running before generating
  final backendRunning = await _checkBackendStatus();
  if (!backendRunning) {
    print('\x1b[31m✘\x1b[0m 116_Api server is not running at $kApiBaseUrl');
    print('Please make sure the Api is running and try again.');
    exit(1);
  }

  print('\x1b[32m✔\x1b[0m 116_Api server is running at $kApiBaseUrl\n');

  final result = await _generateApi();

  _handleResult(result);

  // Format API documentation after generation
  if (result.exitCode == 0) {
    await _formatApiDocs();
  }
}

/// Checks if the backend server is running and accessible.
///
/// Returns true if the swagger endpoint responds successfully.
Future<bool> _checkBackendStatus() async {
  try {
    print('⏳ Checking backend server at $kSwaggerEndpoint...');
    final response = await http
        .get(Uri.parse(kSwaggerEndpoint))
        .timeout(const Duration(seconds: kConnectionTimeoutSeconds));
    return response.statusCode == HttpStatusCode.ok;
  } catch (e) {
    return false;
  }
}

/// Runs build_runner to generate the API client using swagger_dart_code_generator.
///
/// The --delete-conflicting-outputs flag forces build_runner to overwrite
/// existing generated files, ensuring models are always up to date.
Future<ProcessResult> _generateApi() {
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
  print('\n⌛️ Formatting API documentation...\n');

  final result = await Process.run('dart', ['run', kApiDocsFormatPath]);

  if (result.stdout.toString().isNotEmpty) print(result.stdout);
  if (result.exitCode != 0 && result.stderr.toString().isNotEmpty) print(result.stderr);
}
