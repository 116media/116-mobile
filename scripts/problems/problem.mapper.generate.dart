// ignore_for_file: avoid_print
import 'dart:io';

import './constants.dart' show kOutputPath, kPackageName, kCacheFailurePath, kServerFailurePath;

/// Compiled RegExp patterns for performance
final _remotePattern = RegExp(
  r'''@ProblemMappable\.remote\(["'](\w+)["']\)\s*class\s+(\w+)''',
  multiLine: true,
);
final _localPattern = RegExp(
  r'''@ProblemMappable\.local\(["'](\w+)["']\)\s*class\s+(\w+)''',
  multiLine: true,
);

/// Collection of mappable classes organized by type
class _MappableCollection {
  final remoteExceptions = <_MappableClass>[];
  final remoteFailures = <_MappableClass>[];
  final localExceptions = <_MappableClass>[];
  final localFailures = <_MappableClass>[];
}

/// Represents a mappable class with its metadata
class _MappableClass {
  final String className;
  final String identifier;
  final String importPath;

  _MappableClass({required this.className, required this.identifier, required this.importPath});
}

/// Generates ProblemMapper from @ProblemMappable annotations.
///
/// Scans all Dart files for @ProblemMappable annotations and generates
/// the problem_mapper.g.dart file with mapping methods.
///
/// Usage:
///   dart run scripts/generate_problem_mapper.dart
Future<void> main() async {
  try {
    print('🔍 Scanning for @ProblemMappable annotations...\n');

    final mappableCollection = _MappableCollection();

    // Scan lib directory recursively
    await _scanDirectory(Directory('lib'), mappableCollection);

    print('📊 Found:');
    print('  - ${mappableCollection.remoteExceptions.length} remote exceptions');
    print('  - ${mappableCollection.remoteFailures.length} remote failures');
    print('  - ${mappableCollection.localExceptions.length} local exceptions');
    print('  - ${mappableCollection.localFailures.length} local failures\n');

    // Validate mappings
    _validateMappings(mappableCollection);

    // Generate the mapper
    final mapper = _generateMapper(mappableCollection);

    // Write to file
    final outputFile = File(kOutputPath);
    await outputFile.parent.create(recursive: true);
    await outputFile.writeAsString(mapper);

    print('✅ Generated: ${outputFile.path}\n');
  } catch (e, stackTrace) {
    print('❌ Error: $e');
    print(stackTrace);
    exit(1);
  }
}

Future<void> _scanDirectory(Directory dir, _MappableCollection mappableCollection) async {
  await for (final entity in dir.list(recursive: true)) {
    if (entity is File && _shouldScanFile(entity.path)) {
      try {
        await _scanFile(entity, mappableCollection);
      } catch (e) {
        print('⚠️  Warning: Failed to scan ${entity.path}: $e');
      }
    }
  }
}

/// Check if file should be scanned (skip generated files)
bool _shouldScanFile(String path) {
  return path.endsWith('.dart') &&
      !path.endsWith('.g.dart') &&
      !path.endsWith('.freezed.dart') &&
      !path.endsWith('.gr.dart');
}

Future<void> _scanFile(File file, _MappableCollection mappableCollection) async {
  final content = await file.readAsString();
  final importPath = file.path.replaceAll(r'\', '/').replaceFirst('lib/', '');

  // Find remote mappings
  _processMatches(
    _remotePattern.allMatches(content),
    importPath,
    mappableCollection,
    isRemote: true,
  );

  // Find local mappings
  _processMatches(
    _localPattern.allMatches(content),
    importPath,
    mappableCollection,
    isRemote: false,
  );
}

void _processMatches(
  Iterable<RegExpMatch> matches,
  String importPath,
  _MappableCollection mappableCollection, {
  required bool isRemote,
}) {
  for (final match in matches) {
    final identifier = match.group(1)!;
    final className = match.group(2)!;

    final mappable = _MappableClass(
      className: className,
      identifier: identifier,
      importPath: importPath,
    );

    final lists = {
      ('Exception', true): mappableCollection.remoteExceptions,
      ('Exception', false): mappableCollection.localExceptions,
      ('Failure', true): mappableCollection.remoteFailures,
      ('Failure', false): mappableCollection.localFailures,
    };

    final type = className.endsWith('Exception') ? 'Exception' : 'Failure';
    lists[(type, isRemote)]?.add(mappable);
  }
}

/// Validate that exceptions have corresponding failures
void _validateMappings(_MappableCollection mappableCollection) {
  void checkPairs(List<_MappableClass> exceptions, Set<String> failureNames, String type) {
    for (final exc in exceptions) {
      final failureName = exc.className.replaceAll('Exception', 'Failure');
      if (!failureNames.contains(failureName)) {
        print('⚠ Warning: $type ${exc.className} has no corresponding failure');
      }
    }
  }

  final localFailureNames = mappableCollection.localFailures.map((f) => f.className).toSet();
  final remoteFailureNames = mappableCollection.remoteFailures.map((f) => f.className).toSet();

  checkPairs(mappableCollection.localExceptions, localFailureNames, 'local');
  checkPairs(mappableCollection.remoteExceptions, remoteFailureNames, 'remote');
}

String _generateMapper(_MappableCollection mappableCollection) {
  final remoteExceptions = mappableCollection.remoteExceptions;
  final remoteFailures = mappableCollection.remoteFailures;
  final localExceptions = mappableCollection.localExceptions;
  final localFailures = mappableCollection.localFailures;
  final buffer = StringBuffer();

  // Header
  buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
  buffer.writeln('// Generated by generate_problem_mapper.dart');
  buffer.writeln('//');
  buffer.writeln('// To regenerate, run: dart run scripts/generate_problem_mapper.dart');
  buffer.writeln();

  // Imports
  buffer.writeln("import 'dart:convert';");
  buffer.writeln("import 'package:chopper/chopper.dart';");
  buffer.writeln();

  // Base class imports (only the ones actually used)
  buffer.writeln("import 'package:$kPackageName/core/domain/failures/failure.dart';");
  buffer.writeln(
    "import 'package:$kPackageName/core/infrastructure/exceptions/remote/server.exception.dart';",
  );

  // Collect all unique imports
  final allClasses = [...remoteExceptions, ...remoteFailures, ...localExceptions, ...localFailures];

  final imports = allClasses.map((c) => c.importPath).toSet().toList()..sort();
  for (final import in imports) {
    buffer.writeln("import 'package:$kPackageName/$import';");
  }
  buffer.writeln();

  // Class definition
  buffer.writeln('/// Auto-generated mapper for converting between exceptions and failures.');
  buffer.writeln('///');
  buffer.writeln('/// This class provides methods to:');
  buffer.writeln('/// - Convert HTTP responses to typed exceptions');
  buffer.writeln('/// - Convert exceptions to failures for use in repositories');
  buffer.writeln('class ProblemMapper {');
  buffer.writeln('  ProblemMapper._();');
  buffer.writeln();

  // toException method
  buffer.writeln('  /// Converts HTTP Response to typed Exception.');
  buffer.writeln('  ///');
  buffer.writeln('  /// Maps the Problem Details title field to the appropriate exception type.');
  buffer.writeln('  static ServerException toException(Response response) {');
  buffer.writeln('    final data = _parseProblemDetails(response.body);');
  buffer.writeln('    final title = data[\'title\'] as String? ?? \'Exception\';');
  buffer.writeln();
  buffer.writeln('    switch (title) {');

  // Sort exceptions by identifier for consistency
  remoteExceptions.sort((a, b) => a.identifier.compareTo(b.identifier));

  for (final exc in remoteExceptions) {
    buffer.writeln('      case \'${exc.identifier}\':');
    buffer.writeln('        return ${exc.className}(');
    buffer.writeln('          type: data[\'type\'] as String? ?? \'about:blank\',');
    buffer.writeln('          title: data[\'title\'] as String? ?? \'${exc.identifier}\',');
    buffer.writeln('          detail: data[\'detail\'] as String? ?? \'\',');
    buffer.writeln('          instance: data[\'instance\'] as String?,');
    buffer.writeln('          extensions: data[\'extensions\'] as Map<String, dynamic>?,');
    buffer.writeln('        );');
    buffer.writeln();
  }

  buffer.writeln('      default:');
  buffer.writeln('        return DefaultException(');
  buffer.writeln('          type: \'about:blank\',');
  buffer.writeln('          title: title,');
  buffer.writeln(
    '          detail: data[\'detail\'] as String? ?? \'An unexpected error occurred\',',
  );
  buffer.writeln('          instance: data[\'instance\'] as String?,');
  buffer.writeln('          extensions: data,');
  buffer.writeln('        );');
  buffer.writeln('    }');
  buffer.writeln('  }');
  buffer.writeln();

  // toFailure method
  buffer.writeln('  /// Converts Exception to Failure.');
  buffer.writeln('  ///');
  buffer.writeln('  /// Maps exception instances to their corresponding failure types.');
  buffer.writeln('  /// Supports both remote (server) and local (cache) exceptions.');
  buffer.writeln('  static Failure toFailure(Exception exception) {');

  // Local exceptions
  if (localExceptions.isNotEmpty) {
    buffer.writeln('    // Local/Cache exceptions');
    for (final exc in localExceptions) {
      // Map exception to failure by replacing "Exception" with "Failure"
      final failureClassName = exc.className.replaceAll('Exception', 'Failure');
      final failure = localFailures.firstWhere(
        (f) => f.className == failureClassName,
        orElse: () => _MappableClass(
          className: 'CacheFailure',
          identifier: exc.identifier,
          importPath: kCacheFailurePath,
        ),
      );

      buffer.writeln('    if (exception is ${exc.className}) {');
      buffer.writeln('      return ${failure.className}(');
      buffer.writeln('        message: exception.detail,');
      buffer.writeln('        instance: exception.instance,');
      buffer.writeln('      );');
      buffer.writeln('    }');
      buffer.writeln();
    }
  }

  // Remote exceptions
  if (remoteExceptions.isNotEmpty) {
    buffer.writeln('    // Remote/Server exceptions');
    for (final exc in remoteExceptions) {
      // Find matching failure by class name (Exception -> Failure)
      final failureClassName = exc.className.replaceAll('Exception', 'Failure');
      final failure = remoteFailures.firstWhere(
        (f) => f.className == failureClassName,
        orElse: () => _MappableClass(
          className: 'ServerFailure',
          identifier: exc.identifier,
          importPath: kServerFailurePath,
        ),
      );

      buffer.writeln('    if (exception is ${exc.className}) {');
      buffer.writeln('      return ${failure.className}(');
      buffer.writeln('        type: exception.type,');
      buffer.writeln('        title: exception.title,');
      buffer.writeln('        message: exception.detail,');
      buffer.writeln('        instance: exception.instance,');
      buffer.writeln('        extensions: exception.extensions,');
      buffer.writeln('      );');
      buffer.writeln('    }');
      buffer.writeln();
    }
  }

  buffer.writeln('    // Fallback for unmapped exceptions');
  buffer.writeln('    throw UnimplementedError(');
  buffer.writeln('      \'No failure mapping found for \${exception.runtimeType}\',');
  buffer.writeln('    );');
  buffer.writeln('  }');
  buffer.writeln();

  // Helper method
  buffer.writeln('  /// Parses Problem Details JSON from response body.');
  buffer.writeln('  static Map<String, dynamic> _parseProblemDetails(String body) {');
  buffer.writeln('    try {');
  buffer.writeln('      return jsonDecode(body) as Map<String, dynamic>;');
  buffer.writeln('    } catch (e) {');
  buffer.writeln('      return <String, dynamic>{};');
  buffer.writeln('    }');
  buffer.writeln('  }');
  buffer.writeln('}');

  return buffer.toString();
}
