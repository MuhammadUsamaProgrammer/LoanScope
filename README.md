# LoanScope

A Flutter app foundation built for scale: **Riverpod 3 with code generation**, **go_router**, **Dio + Retrofit**, **Freezed** models, localization, and platform-aware networking for mobile and web.

> 🚧 Work in progress. The architecture and core services are in place; product features are being built on top.

<!--
## Screenshots
| Splash | Dashboard |
|---|---|
| <img src="screenshots/splash.png" width="250"> | <img src="screenshots/dashboard.png" width="250"> |
-->

## Highlights

- **Riverpod 3 + `riverpod_annotation`**: generated, type-safe providers for app start, connectivity, localization, and storage
- **Platform-aware HTTP client**: conditional imports pick a mobile (`dart:io`) or web Dio client at compile time
- **Typed networking**: Dio + Retrofit with custom interceptors and a pretty request logger
- **Immutable models**: Freezed + `json_serializable`
- **Declarative routing**: go_router with a bottom-navigation shell
- **Localization**: ARB-based `flutter_localizations` with a Riverpod locale notifier
- **Environment config**: `flutter_dotenv` plus an environment manager for base URLs
- **Offline awareness**: connectivity checks via `connectivity_plus`
- **Type-safe assets**: `flutter_gen` for images and fonts
- **Reusable UI kit**: buttons, form fields with validators, searchable dropdowns, shimmer loaders, cached and SVG images, confirmation modals

## Tech stack

| Area | Packages |
|---|---|
| State management | `flutter_riverpod`, `riverpod_annotation` |
| Routing | `go_router` |
| Networking | `dio`, `retrofit` |
| Models / codegen | `freezed`, `json_serializable`, `flutter_gen` |
| Storage | `shared_preferences` |
| UI | `google_fonts`, `lottie`, `shimmer`, `flutter_svg`, `font_awesome_flutter` |
| Platform | `permission_handler`, `connectivity_plus` |

## Project structure

```
lib/
├── core/
│   ├── config/          # Env, Dio clients (mobile/web), interceptors, API config
│   ├── l10n/            # ARB files + generated localizations
│   ├── local/           # SharedPreferences repositories
│   ├── localization/    # Locale notifier
│   ├── routes/          # go_router setup
│   ├── services/        # Connectivity, sharing, file/image pickers
│   └── theme/
├── features/            # bottom_shell, dashboard, splash
├── shared/              # Reusable widgets, modals, validators, utils
├── gen/                 # flutter_gen output
└── main.dart
```

## Getting started

```bash
git clone https://github.com/MuhammadUsamaProgrammer/LoanScope.git
cd LoanScope
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```

Create a `.env` file in the project root before running. The app loads it as an asset.
