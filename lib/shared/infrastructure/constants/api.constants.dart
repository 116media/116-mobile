import 'dart:io' show Platform;

/// The base URL of the backend API server.
///
/// For Android emulator: use 10.0.2.2 to access localhost
/// For iOS simulator: use localhost or 127.0.0.1
/// For physical devices: use your computer's IP address on the network
final String kApiBaseUrl = Platform.isAndroid ? 'http://10.0.2.2:5025' : 'http://localhost:5025';
