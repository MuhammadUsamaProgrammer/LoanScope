part of '../../../loanscope.dart';

/// Widget class to manage asynchronous app initialization
class AppStartupWidget extends ConsumerWidget {
  const AppStartupWidget({super.key, required this.onLoaded});

  final WidgetBuilder onLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    return (appStartupState).when(
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
      ),
      error: (e, st) => const Scaffold(
        body: Center(
          child: InterText(
            'App initialization failed',
            size: 14,
            color: AppColors.color1E293B,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      data: (_) => onLoaded(context),
    );
  }
}
