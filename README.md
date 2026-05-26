# 116-mobile

116 (Cent-Seize) is a bold digital platform that promotes music and hip-hop culture in DR and beyond. Through articles, video shows, and exclusive behind-the-scenes content, it connects fans with artists, highlights emerging talent, and tells the stories shaping the culture.

This is the mobile app built with Flutter 3, Dart 3, and follows Clean Architecture with BLoC for state management.

## Getting Started

### Prerequisites

- [Flutter SDK 3.x](https://flutter.dev/docs/get-started/install) (Dart SDK ^3.9.2)
- IDE: [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)
- Xcode (for iOS development on macOS)
- Android SDK (for Android development)

### Quick Setup

```bash
# Install dependencies
flutter pub get

# Run code generation (Freezed, Chopper, Hive, i18n)
dart run build_runner build --delete-conflicting-outputs

# Run on a connected device or emulator
flutter run
```

### Available Commands

| Command | Description |
| --- | --- |
| `flutter pub get` | Install dependencies |
| `flutter run` | Run the app in debug mode |
| `flutter build apk` | Build Android APK |
| `flutter build ios` | Build iOS app |
| `dart run build_runner build` | Run code generation |
| `dart run build_runner watch` | Watch and regenerate on changes |
| `flutter test` | Run unit tests |
| `flutter analyze` | Run static analysis |

## Development Workflow

1. Create a feature branch following the [naming conventions](#branch-naming)
2. Make your changes, code will be auto-formatted on save
3. Run code generation if you modified any Freezed, Chopper, or Hive models
4. Commit changes following [conventional commit](https://www.conventionalcommits.org/) format
5. Push to remote and create a pull request

## Architecture

The app follows Clean Architecture with feature-based module organization:

```text
lib/
  api/               # Generated API client (Chopper + Swagger)
  hive/              # Local storage (Hive CE)
  i18n/              # Internationalization (slang)
  modules/
    auth/            # Authentication (login, signup, OTP)
    ...
  platform/          # Platform-specific (device info, connectivity)
  shared/
    domain/          # Shared entities, failures, enums
    data/            # Shared repositories, mappers
    presentation/    # Shared widgets, themes, navigation
  main.dart          # App entry point
```

Each module follows the same layered structure:

- **domain/** : Entities, use cases, repository contracts
- **data/** : Repository implementations, data sources, mappers
- **presentation/** : Screens, widgets, BLoC (state management)

## Code Formatting

The project uses the Dart formatter with a line length of 100 characters. Formatting is automatic on save in VS Code.

### VS Code Setup

The project includes `.vscode/settings.json` with:

- Format on save enabled
- Format on type enabled
- Line length ruler at 100 characters
- ARGB color highlighting enabled

### Manual Commands

```bash
# Format all Dart files
dart format -l 100 .

# Analyze for issues
flutter analyze
```

## Code Generation

This project uses several code generators:

| Generator | Purpose |
| --- | --- |
| [Freezed](https://pub.dev/packages/freezed) | Immutable data classes and unions |
| [Chopper](https://pub.dev/packages/chopper) | HTTP client generation from API definitions |
| [Swagger Dart Code Generator](https://pub.dev/packages/swagger_dart_code_generator) | API client from Swagger/OpenAPI spec |
| [Hive CE Generator](https://pub.dev/packages/hive_ce_generator) | TypeAdapter generation for local storage |
| [Slang](https://pub.dev/packages/slang) | Type-safe internationalization |
| [JSON Serializable](https://pub.dev/packages/json_serializable) | JSON serialization/deserialization |

After modifying any annotated model, run:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## State Management

The app uses [flutter_bloc](https://pub.dev/packages/flutter_bloc) for state management. Each feature module has its own BLoC that handles business logic and state transitions.

## Dependency Injection

Dependencies are registered and resolved using [get_it](https://pub.dev/packages/get_it) as the service locator.

## Code Style Standards

The project enforces:

- Line length: 100 characters
- Indentation: 2 spaces (Dart convention)
- Trailing commas: Required for multi-line arguments
- Generated files: Excluded from linting (`*.g.dart`, `*.freezed.dart`)

## Git Workflow

This project follows the same branching strategy as the rest of the 116 platform. See the [backend README](../backend/README.md) for the full workflow documentation.

### Branch Naming

Pattern: `^(feat|chore|bug|fix|doc|docs|style|refactor|perf|test|build|ci|revert)-[a-z]+(-[a-z]+)*$`

Examples:

- `feat-video-player`
- `fix-auth-token-refresh`
- `chore-update-dependencies`

## Tech Stack

| Category | Technology |
| --- | --- |
| Framework | Flutter 3 |
| Language | Dart 3 |
| State Management | flutter_bloc |
| DI Container | get_it |
| HTTP Client | Chopper |
| Local Storage | Hive CE |
| Navigation | go_router |
| i18n | slang |
| Auth | Google Sign-In, Facebook Auth |
| Linting | flutter_lints |
