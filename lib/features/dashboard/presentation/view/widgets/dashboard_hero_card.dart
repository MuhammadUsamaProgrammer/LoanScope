part of '../../../../../loanscope.dart';

class DashboardHeroCard extends StatelessWidget {
  const DashboardHeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0F766E), Color(0xFF14B8A6)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InterText(
            'AI Loan Coach',
            color: AppColors.white.withOpacity(0.9),
            size: 12,
            letterSpacing: 1,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 6),
          const InterText(
            'Conversational pre-check, live scoring, and eligibility roadmap.',
            color: AppColors.white,
            size: 18,
            height: 1.3,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: const [
              DashboardPillTag(title: 'Chat-style flow'),
              DashboardPillTag(title: 'Voice-ready UX'),
              DashboardPillTag(title: 'What-if simulator'),
            ],
          ),
        ],
      ),
    );
  }
}

class DashboardPillTag extends StatelessWidget {
  const DashboardPillTag({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.18),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: AppColors.white.withOpacity(0.15)),
      ),
      child: InterText(
        title,
        color: AppColors.white,
        size: 11,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
