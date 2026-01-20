/// Configuration constants for API generation scripts.
///
/// This file contains shared configuration values used across multiple scripts
/// for API client generation and management.
library;

/// Local path to the output generated API client folder.
const String kOutputFolder = './lib/api/client/';

/// Timeout duration for HTTP requests when checking backend status (in seconds).
const int kConnectionTimeoutSeconds = 5;

/// Path to the script that formats generated API swagger documentation files.
///
/// This is executed after API client generation to apply.
const String kApiDocsFormatPath = 'scripts/api/api.docs.format.dart';

/// The base URL of the backend API server.
///
/// This should point to your local or remote API server.
/// const String kApiBaseUrl = 'http://localhost:5025';
const String kApiBaseUrl = 'https://one16-backend.onrender.com';

/// The Swagger/OpenAPI specification endpoint.
///
/// This endpoint provides the API specification in JSON format.
const String kSwaggerEndpoint = '$kApiBaseUrl/swagger/v1/swagger.json';
