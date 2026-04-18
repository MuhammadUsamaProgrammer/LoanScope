part of '../../../../../loanscope.dart';

class DashboardRoadmapCard extends StatelessWidget {
  const DashboardRoadmapCard({super.key, required this.roadmap});

  final List<DashboardRoadmapModel> roadmap;

  @override
  Widget build(BuildContext context) {
    return DashboardCardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InterText(
            '30/60/90 Day Roadmap',
            size: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 6),
          const InterText(
            'Personalized action plan to move toward eligibility.',
            color: AppColors.color64748A,
            size: 13,
          ),
          const SizedBox(height: 12),
          ...roadmap.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.colorF5F8FB,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.colorEBEFF3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InterText(
                      entry.phase,
                      size: 13,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 8),
                    ...entry.steps.map(
                      (step) => Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(99),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: InterText(
                                step,
                                size: 12,
                                color: AppColors.color333333,
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
