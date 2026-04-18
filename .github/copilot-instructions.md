# LoanScope - AI Coding Agent Instructions

## Purpose
This document is for AI coding agents (for example GitHub Copilot, GPT-based agents, Claude) working in the LoanScope codebase. Follow these instructions to stay aligned with current architecture, naming, and workflow.

## Project Overview
LoanScope is a Flutter app focused on loan-readiness guidance and simulation.

Current experience flow:
1. Splash onboarding screen
2. Bottom shell layout
3. Dashboard with live loan-readiness evaluation, gap analysis, and 30/60/90 roadmap

Tech stack in use:
- Flutter (SDK ^3.11.0)
- Riverpod 3.x with codegen (`riverpod_annotation`)
- GoRouter
- Freezed + json_serializable
- Dio + Retrofit
- Shared Preferences
- FlutterGen assets

## Critical: Barrel File Pattern
This repository uses a barrel file at [lib/loanscope.dart](lib/loanscope.dart) with `part` statements.

Most files are `part of` files and should not add their own imports.

Example headers for new part files:
```dart
part of '../../loanscope.dart';           // lib/core/config/
part of '../../../loanscope.dart';        // lib/shared/custom_app_start/presentation/
part of '../../../../loanscope.dart';     // lib/features/dashboard/domain/model/
part of '../../../../../loanscope.dart';  // deeper feature paths
```

Then register every new part file in [lib/loanscope.dart](lib/loanscope.dart) under the closest matching section comment.

Provider exception:
Files under `presentation/provider/` (or `presentation/providers/`) use standard imports for Riverpod codegen.

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../loanscope.dart';

part 'feature_provider.g.dart';
```

Do not add regular imports in `part of` files unless the file is intentionally a standalone provider/codegen file.

## Current App Flow
Startup flow is:
1. [lib/main.dart](lib/main.dart) runs `ProviderScope(child: MyApp())`
2. [lib/app.dart](lib/app.dart) builds `MaterialApp.router`
3. [lib/shared/custom_app_start/presentation/my_app_start.dart](lib/shared/custom_app_start/presentation/my_app_start.dart) waits for `appStartupProvider`
4. [lib/shared/custom_app_start/providers/app_start.dart](lib/shared/custom_app_start/providers/app_start.dart) performs startup tasks:
   - `EnvKeys.load()` (`.env`)
   - initialize `SharedPreferences`
   - lock portrait orientation
   - configure system UI overlays
5. Router starts at splash and transitions to dashboard

Navigation flow:
- [lib/core/routes/routes.dart](lib/core/routes/routes.dart): `AppRoutes.splash` and `AppRoutes.dashboard`
- [lib/core/routes/router.dart](lib/core/routes/router.dart): root splash route + `ShellRoute` wrapping dashboard
- [lib/features/bottom_shell/bottom_shell.dart](lib/features/bottom_shell/bottom_shell.dart): custom bottom bar (placeholder tabs currently show "coming soon")

## Feature Architecture (Current)
Current top-level feature modules:
```text
lib/features/
|- splash/
|- bottom_shell/
`- dashboard/
```

Dashboard structure:
```text
dashboard/
|- data/
|  `- data_source/
|- domain/
|  |- model/
|  `- repository/
`- presentation/
   |- provider/
   `- view/
```

This dashboard module is the reference pattern for future feature implementation.

## Dashboard State/Data Flow (Reference)
The active flow is local-domain driven:
1. UI reads state from `dashboardPProvider`
2. Slider/input updates call notifier methods (for example `updateMonthlyIncome`)
3. Notifier delegates to `DashboardRepository`
4. Repository (`DashboardLocalRepository`) evaluates profile and scenarios
5. State is replaced using immutable Freezed models
6. UI cards re-render from updated `DashboardStateModel`

Relevant files:
- [lib/features/dashboard/presentation/provider/dashboard_provider.dart](lib/features/dashboard/presentation/provider/dashboard_provider.dart)
- [lib/features/dashboard/domain/repository/dashboard_repository.dart](lib/features/dashboard/domain/repository/dashboard_repository.dart)
- [lib/features/dashboard/domain/repository/dashboard_local_repository.dart](lib/features/dashboard/domain/repository/dashboard_local_repository.dart)
- [lib/features/dashboard/data/data_source/dashboard_local_data_source.dart](lib/features/dashboard/data/data_source/dashboard_local_data_source.dart)

## State Management Pattern
Provider files should follow Riverpod codegen style:
```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../loanscope.dart';

part 'dashboard_provider.g.dart';

@riverpod
class DashboardP extends _$DashboardP {
  @override
  DashboardStateModel build() {
    final profile = ref.read(dashboardRepository).getInitialProfile();
    return DashboardStateModel(
      profile: profile,
      evaluation: ref.read(dashboardRepository).evaluateProfile(profile),
      scenarios: ref.read(dashboardRepository).getScenarios(),
    );
  }
}
```

For asynchronous one-time initialization, use keep-alive providers (see `@Riverpod(keepAlive: true)` in app startup and shared preferences providers).

## Networking and Environment
Networking conventions:
- Use [lib/core/config/api.dart](lib/core/config/api.dart) `apiServiceProvider` as the source of configured `Dio`
- Base URL comes from [lib/core/config/envoirnments.dart](lib/core/config/envoirnments.dart)
- Authorization token is injected by [lib/core/config/interceptors.dart](lib/core/config/interceptors.dart)
- Avoid creating ad-hoc `Dio()` instances in feature code

Token and env usage:
- Load `.env` via `EnvKeys.load()` in startup
- Read auth token through `ref.read(localDataProvider).accessToken`

## Local Storage
Shared preferences flow:
- [lib/core/local/providers/shared_pref.dart](lib/core/local/providers/shared_pref.dart) exposes `sharedPreferencesProvider`
- [lib/core/local/repositories/local_storage_repository.dart](lib/core/local/repositories/local_storage_repository.dart) exposes `localDataProvider`
- [lib/core/local/repositories/shared_preference_repository.dart](lib/core/local/repositories/shared_preference_repository.dart) contains implementation

Common operations:
```dart
ref.read(localDataProvider).accessToken;
ref.read(localDataProvider).getUserId;
await ref.read(localDataProvider).setAccessToken('token');
await ref.read(localDataProvider).saveUserId('user-id');
```

## Shared UI and Helpers
Use existing shared widgets/helpers before adding new abstractions:
- `AppButton` in [lib/shared/widgets/app_buttons/primary_button.dart](lib/shared/widgets/app_buttons/primary_button.dart)
  - Includes internet check via `checkInternetProvider` before executing action
- `InterText` in [lib/shared/widgets/text_widget/app_text.dart](lib/shared/widgets/text_widget/app_text.dart)
- Toast/loading helpers in [lib/shared/widgets/custom_message.dart](lib/shared/widgets/custom_message.dart)
  - `$showMessage()`
  - `$showLoading()` / `$hidleLoading()`
- Theme colors in [lib/core/theme/colors.dart](lib/core/theme/colors.dart)

## Form Handling
Use `FormStateMixin` from [lib/core/mixin/form_state_mixin.dart](lib/core/mixin/form_state_mixin.dart):
```dart
class _MyPageState extends ConsumerState<MyPage> with FormStateMixin {
  @override
  FutureOr<void> onSubmit() async {
    // Called only after validation passes.
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: AppButton(onPressed: submitter, title: 'Submit'),
    );
  }
}
```

## FlutterGen Asset Rules
Follow generated asset types in [lib/gen/assets.gen.dart](lib/gen/assets.gen.dart):
- Use `Assets.images.*.image(...)` for raster assets (`AssetGenImage`)
- Use `Assets.svg.*.svg(...)` only for SVG assets

Do not mix image and SVG accessors.

## Build and Codegen Commands
Run these after model/provider/API changes:

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter pub run build_runner watch --delete-conflicting-outputs
flutter gen-l10n
flutter analyze
```

Never manually edit generated files such as:
- `*.g.dart`
- `*.freezed.dart`

## Key Reference Files
- [lib/loanscope.dart](lib/loanscope.dart) - barrel file and all `part` registrations
- [lib/main.dart](lib/main.dart) - app entry point
- [lib/app.dart](lib/app.dart) - root app widget and router hookup
- [lib/core/routes/router.dart](lib/core/routes/router.dart) - GoRouter config
- [lib/core/routes/routes.dart](lib/core/routes/routes.dart) - route enum
- [lib/shared/custom_app_start/providers/app_start.dart](lib/shared/custom_app_start/providers/app_start.dart) - async startup flow
- [lib/features/dashboard/presentation/provider/dashboard_provider.dart](lib/features/dashboard/presentation/provider/dashboard_provider.dart) - primary dashboard state provider
- [lib/features/dashboard/presentation/view/dashboard_page.dart](lib/features/dashboard/presentation/view/dashboard_page.dart) - dashboard composition

## Common Mistakes To Avoid
- Using `skilltree.dart` references in this repo (use `loanscope.dart`)
- Adding imports inside normal `part of` files
- Creating a new file but forgetting to add its `part` line in [lib/loanscope.dart](lib/loanscope.dart)
- Creating Riverpod provider files without `part 'x.g.dart';`
- Editing generated files directly
- Using `BaseModel<T>` for list responses where `BaseListModel<T>` is expected
- Calling `Assets.images.*.svg(...)` for raster assets
- Hardcoding route strings instead of `AppRoutes.*.path`