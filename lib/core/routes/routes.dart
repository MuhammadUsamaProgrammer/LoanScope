part of '../../loanscope.dart';

enum AppRoutes {
  splash('splash', '/splash'),
  dashboard('dashboard', '/dashboard'),
  dashboardIntake('dashboard-intake', '/dashboard/intake');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);

  static String get initialLocation => AppRoutes.splash.path;

  static List<AppRoutes> get publicRoutes => [splash];

  static bool isPublicRoute(GoRouterState state) {
    final fullPath = state.fullPath;

    return fullPath != null &&
        publicRoutes.any((p) {
          return fullPath.startsWith(p.path);
        });
  }
}
