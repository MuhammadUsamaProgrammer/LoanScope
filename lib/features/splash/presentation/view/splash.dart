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
    context.go(AppRoutes.dashboard.path);
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
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: _navigateToDashboard,
                    child: const InterText(
                      'Skip',
                      color: AppColors.white,
                      size: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InterText(
                            'LoanScope',
                            size: 34,
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.8,
                          ),
                          const SizedBox(height: 10),
                          const InterText(
                            'Your conversational AI for faster loan readiness',
                            size: 14,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                            textAlign: TextAlign.center,
                            height: 1.4,
                          ),
                          const SizedBox(height: 28),
                          Container(
                            width: double.infinity,
                            constraints: const BoxConstraints(maxWidth: 420),
                            decoration: BoxDecoration(
                              color: AppColors.white.withOpacity(0.96),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.all(22),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const InterText(
                                  'Preparing your smart eligibility workspace...',
                                  size: 16,
                                  color: AppColors.color1E293B,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3,
                                ),
                                const SizedBox(height: 14),
                                _buildFeatureTile(
                                  icon: Icons.chat_bubble_outline,
                                  text:
                                      'Chat-first flow with voice-ready interactions',
                                ),
                                const SizedBox(height: 8),
                                _buildFeatureTile(
                                  icon: Icons.speed,
                                  text:
                                      'Live LoanReady Score updates in real time',
                                ),
                                const SizedBox(height: 8),
                                _buildFeatureTile(
                                  icon: Icons.account_tree_outlined,
                                  text:
                                      'Gap analysis and personalized 30/60/90 roadmap',
                                ),
                                const SizedBox(height: 18),
                                AnimatedBuilder(
                                  animation: _animation,
                                  builder: (context, child) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          child: LinearProgressIndicator(
                                            value: _animation.value,
                                            minHeight: 9,
                                            backgroundColor: AppColors
                                                .colorC1C7D0
                                                .withOpacity(0.3),
                                            valueColor:
                                                const AlwaysStoppedAnimation<
                                                  Color
                                                >(AppColors.primary),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        InterText(
                                          '${(_animation.value * 100).toInt()}% loaded',
                                          size: 12,
                                          color: AppColors.color64748A,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.color1E293B,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: _navigateToDashboard,
                    child: const InterText(
                      'Start Eligibility Check',
                      size: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.color1E293B,
                    ),
                  ),
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
