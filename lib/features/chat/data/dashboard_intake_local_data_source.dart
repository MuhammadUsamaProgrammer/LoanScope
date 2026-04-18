part of '../../../loanscope.dart';

class DashboardIntakeLocalDataSource {
  const DashboardIntakeLocalDataSource();

  static const String monthlyIncomeField = 'monthlyIncome';
  static const String existingEmiField = 'existingEmi';
  static const String desiredLoanAmountField = 'desiredLoanAmount';
  static const String tenureMonthsField = 'tenureMonths';
  static const String savingsBufferField = 'savingsBuffer';

  String get welcomeMessage =>
      'Let us do a quick AI intake. I will ask one question at a time and update your readiness instantly.';

  List<DashboardIntakeQuestionModel> getQuestions() {
    return const [
      DashboardIntakeQuestionModel(
        id: 'q_monthly_income',
        fieldKey: monthlyIncomeField,
        prompt: 'What is your monthly net income (in Rs)?',
        inputType: DashboardIntakeInputType.numeric,
        hint: 'Example: 65000',
        minValue: 20000,
        maxValue: 200000,
      ),
      DashboardIntakeQuestionModel(
        id: 'q_existing_emi',
        fieldKey: existingEmiField,
        prompt: 'How much do you already pay in EMIs each month (in Rs)?',
        inputType: DashboardIntakeInputType.numeric,
        hint: 'Example: 14000',
        minValue: 0,
        maxValue: 80000,
      ),
      DashboardIntakeQuestionModel(
        id: 'q_loan_amount',
        fieldKey: desiredLoanAmountField,
        prompt: 'What loan amount do you want to apply for (in Rs)?',
        inputType: DashboardIntakeInputType.numeric,
        hint: 'Example: 500000',
        minValue: 100000,
        maxValue: 2500000,
      ),
      DashboardIntakeQuestionModel(
        id: 'q_tenure',
        fieldKey: tenureMonthsField,
        prompt: 'Choose your preferred tenure (months).',
        inputType: DashboardIntakeInputType.singleChoice,
        options: [
          DashboardIntakeOptionModel(label: '24', value: 24),
          DashboardIntakeOptionModel(label: '36', value: 36),
          DashboardIntakeOptionModel(label: '48', value: 48),
          DashboardIntakeOptionModel(label: '60', value: 60),
        ],
        minValue: 12,
        maxValue: 84,
      ),
      DashboardIntakeQuestionModel(
        id: 'q_savings',
        fieldKey: savingsBufferField,
        prompt: 'What is your current emergency savings buffer (in Rs)?',
        inputType: DashboardIntakeInputType.numeric,
        hint: 'Example: 50000',
        minValue: 0,
        maxValue: 300000,
      ),
    ];
  }
}
