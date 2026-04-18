part of '../../../../../loanscope.dart';

class DashboardSimulatorCard extends StatelessWidget {
  const DashboardSimulatorCard({
    super.key,
    required this.profile,
    required this.scenarios,
    required this.onMonthlyIncomeChanged,
    required this.onExistingEmiChanged,
    required this.onDesiredLoanAmountChanged,
    required this.onTenureMonthsChanged,
    required this.onSavingsBufferChanged,
    required this.onScenarioTap,
  });

  final DashboardProfileModel profile;
  final List<DashboardScenarioModel> scenarios;
  final ValueChanged<double> onMonthlyIncomeChanged;
  final ValueChanged<double> onExistingEmiChanged;
  final ValueChanged<double> onDesiredLoanAmountChanged;
  final ValueChanged<double> onTenureMonthsChanged;
  final ValueChanged<double> onSavingsBufferChanged;
  final ValueChanged<DashboardScenarioType> onScenarioTap;

  @override
  Widget build(BuildContext context) {
    return DashboardCardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InterText(
            'What-If Simulator',
            size: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 6),
          const InterText(
            'Adjust values and watch the score update instantly.',
            color: AppColors.color64748A,
            size: 13,
          ),
          const SizedBox(height: 12),
          DashboardSliderField(
            label: 'Monthly Income',
            valueLabel: 'Rs ${profile.monthlyIncome.toStringAsFixed(0)}',
            value: profile.monthlyIncome,
            min: 20000,
            max: 200000,
            onChanged: onMonthlyIncomeChanged,
          ),
          DashboardSliderField(
            label: 'Existing EMIs',
            valueLabel: 'Rs ${profile.existingEmi.toStringAsFixed(0)}',
            value: profile.existingEmi,
            min: 0,
            max: 80000,
            onChanged: onExistingEmiChanged,
          ),
          DashboardSliderField(
            label: 'Desired Loan Amount',
            valueLabel: 'Rs ${profile.desiredLoanAmount.toStringAsFixed(0)}',
            value: profile.desiredLoanAmount,
            min: 100000,
            max: 2500000,
            onChanged: onDesiredLoanAmountChanged,
          ),
          DashboardSliderField(
            label: 'Tenure (Months)',
            valueLabel: '${profile.tenureMonths.toStringAsFixed(0)} months',
            value: profile.tenureMonths,
            min: 12,
            max: 84,
            onChanged: onTenureMonthsChanged,
          ),
          DashboardSliderField(
            label: 'Savings Buffer',
            valueLabel: 'Rs ${profile.savingsBuffer.toStringAsFixed(0)}',
            value: profile.savingsBuffer,
            min: 0,
            max: 300000,
            onChanged: onSavingsBufferChanged,
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: scenarios
                .map(
                  (scenario) => DashboardQuickScenarioChip(
                    title: scenario.title,
                    onTap: () => onScenarioTap(scenario.type),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class DashboardSliderField extends StatelessWidget {
  const DashboardSliderField({
    super.key,
    required this.label,
    required this.valueLabel,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
  });

  final String label;
  final String valueLabel;
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InterText(label, size: 13, fontWeight: FontWeight.w600),
              ),
              InterText(valueLabel, size: 12, color: AppColors.color64748A),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: AppColors.primary,
              activeTrackColor: AppColors.primary,
              inactiveTrackColor: AppColors.colorEDF1F6,
            ),
            child: Slider(
              value: value.clamp(min, max),
              min: min,
              max: max,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardQuickScenarioChip extends StatelessWidget {
  const DashboardQuickScenarioChip({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
        decoration: BoxDecoration(
          color: AppColors.colorF4F8FE,
          borderRadius: BorderRadius.circular(999),
          border: Border.all(color: AppColors.colorEBEFF3),
        ),
        child: InterText(
          title,
          size: 11,
          color: AppColors.color3182CE,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
