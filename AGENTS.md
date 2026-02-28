# Repository Guidelines

## Project Structure & Module Organization
- `lib/` contains the Flutter app entry point (`lib/main.dart`) and should hold all app-facing Dart code.
- `android/` and `ios/` contain platform runners for the app.
- `scratch144_base_dwhidjwo/` is a local Flutter plugin package (wired through `pubspec.yaml`) with its own `lib/`, `android/`, and `ios/` implementations.
- Keep reusable platform-bridge logic in the plugin package, and UI/business logic in the app module.

## Build, Test, and Development Commands
- `flutter pub get` — install/update Dart and Flutter dependencies for the app.
- `flutter analyze` — run static analysis using `analysis_options.yaml` + `flutter_lints`.
- `flutter test` — run Dart/Flutter unit and widget tests.
- `flutter run` — start the app locally (add `-d <device>` to target a device).
- `flutter build apk` / `flutter build ios` — create release artifacts.
- Plugin-only workflow: `cd scratch144_base_dwhidjwo && flutter pub get && flutter test`.

## Coding Style & Naming Conventions
- Follow Dart defaults: 2-space indentation, trailing commas where useful for readable widget trees.
- Format before committing: `dart format .` (or `flutter format .` if configured locally).
- Naming: files `snake_case.dart`, classes `UpperCamelCase`, methods/variables `lowerCamelCase`, private members prefixed with `_`.
- Prefer small, composable widgets and keep platform channel APIs isolated in the plugin.

## Testing Guidelines
- Use `flutter_test` for unit/widget tests.
- Name test files `*_test.dart`; mirror source paths under a top-level `test/` directory.
- Add regression tests for bug fixes and key UI states.
- For Android plugin logic, keep JVM tests under `scratch144_base_dwhidjwo/android/src/test/...`.

## Commit & Pull Request Guidelines
- No Git history is present in this checkout, so use Conventional Commit style moving forward (e.g., `feat(plugin): add method channel argument validation`).
- Keep commits focused and atomic; include related tests in the same change.
- PRs should include: purpose, scope, test evidence (`flutter analyze`, `flutter test`), linked issue(s), and screenshots/videos for UI changes.
