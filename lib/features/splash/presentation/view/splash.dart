part of '../../../../loanscope.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  Timer? _timer;
  bool _didNavigate = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
    _timer = Timer(const Duration(milliseconds: 1700), _navigateToDashboard);
  }

  void _navigateToDashboard() {
    if (!mounted || _didNavigate) return;
    _didNavigate = true;
    // context.go(AppRoutes.dashboard.path);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0F766E), Color(0xFF14B8A6), Color(0xFF0B3D3A)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Assets.images.logo.image(
                              // width: 24,
                              // height: 24,
                              // color: AppColors.textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: const InterText(
                            'Preparing your smart eligibility workspace...',
                            size: 16,
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: LinearProgressIndicator(
                            value: _animation.value,
                            minHeight: 9,
                            backgroundColor: AppColors.white,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              AppColors.primary,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        InterText(
                          '${(_animation.value * 100).toInt()}% loaded',
                          size: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureTile({required IconData icon, required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: AppColors.colorECFDF5,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 14, color: AppColors.color10B981),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: InterText(
            text,
            size: 12,
            color: AppColors.color64748A,
            fontWeight: FontWeight.w500,
            height: 1.35,
          ),
        ),
      ],
    );
  }
}
