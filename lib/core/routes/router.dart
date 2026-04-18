part of '../../loanscope.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final routerConfigProvider = Provider((ref) {
  // Watch sharedPreferencesProvider to rebuild router when it becomes available
  // final sharedPrefsAsync = ref.watch(sharedPreferencesProvider);
  //   // Determine initial location based on saved user data
  String initialLocation = AppRoutes.initialLocation;

  // if (sharedPrefsAsync.hasValue) {
  //   final localData = ref.read(localDataProvider);
  //   final userId = localData.getUserId;

  //   if (userId.isNotEmpty) {
  //     initialLocation = AppRoutes.dashboard.path;
  //   }
  // }

  return GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        path: AppRoutes.splash.path,
        name: AppRoutes.splash.name,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.dashboard.path,
        name: AppRoutes.dashboard.name,
        builder: (context, state) => const DashboardPage(),
        routes: [
          GoRoute(
            path: AppRoutes.dashboardIntake.path,
            name: AppRoutes.dashboardIntake.name,
            builder: (context, state) => const DashboardIntakePage(),
          ),
        ],
      ),
    ],
  );
});
