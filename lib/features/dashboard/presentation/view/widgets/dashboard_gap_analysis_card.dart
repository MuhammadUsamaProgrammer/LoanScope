part of '../../../../../loanscope.dart';

class DashboardGapAnalysisCard extends StatelessWidget {
  const DashboardGapAnalysisCard({super.key, required this.gapItems});

  final List<DashboardGapItemModel> gapItems;

  @override
  Widget build(BuildContext context) {
    return DashboardCardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InterText(
            'Gap Analysis',
            size: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 6),
          const InterText(
            'If profile is not qualified, here is exactly what needs to change.',
            color: AppColors.color64748A,
            size: 13,
          ),
          const SizedBox(height: 12),
          ...gapItems.map(
            (gap) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.colorEBEFF3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InterText(gap.title, size: 14, fontWeight: FontWeight.w700),
                    const SizedBox(height: 6),
                    InterText(
                      'Current: ${gap.currentValue}  |  Target: ${gap.targetValue}',
                      size: 12,
                      color: AppColors.color64748A,
                    ),
                    const SizedBox(height: 6),
                    InterText(
                      gap.suggestion,
                      size: 12,
                      color: AppColors.color333333,
                      height: 1.35,
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
