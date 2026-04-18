part of '../../../../loanscope.dart';

class DashboardIntakeLocalRepository implements DashboardIntakeRepository {
  const DashboardIntakeLocalRepository({
    required DashboardIntakeLocalDataSource dataSource,
    required DashboardRepository dashboardRepository,
  }) : _dataSource = dataSource,
       _dashboardRepository = dashboardRepository;

  final DashboardIntakeLocalDataSource _dataSource;
  final DashboardRepository _dashboardRepository;

  @override
  DashboardIntakeStateModel getInitialState() {
    final questions = _dataSource.getQuestions();

    if (questions.isEmpty) {
      return DashboardIntakeStateModel(
        isCompleted: true,
        messages: [
          DashboardIntakeMessageModel(
            id: 'intake_empty',
            sender: DashboardIntakeMessageSender.bot,
            text: 'No intake questions are configured right now.',
            createdAt: DateTime.now(),
          ),
        ],
      );
    }

    return DashboardIntakeStateModel(
      questions: questions,
      messages: [
        _buildMessage(
          sender: DashboardIntakeMessageSender.bot,
          text: _dataSource.welcomeMessage,
        ),
        _buildMessage(
          sender: DashboardIntakeMessageSender.bot,
          text: questions.first.prompt,
        ),
      ],
    );
  }

  @override
  DashboardIntakeStateModel updateCurrentInput(
    DashboardIntakeStateModel state,
    String value,
  ) {
    return state.copyWith(currentInputValue: value, validationError: null);
  }

  @override
  DashboardIntakeStateModel selectOption(
    DashboardIntakeStateModel state,
    DashboardIntakeOptionModel option,
  ) {
    return state.copyWith(
      currentInputValue: _formatNumeric(option.value),
      validationError: null,
    );
  }

  @override
  DashboardIntakeStateModel submitCurrentAnswer(
    DashboardIntakeStateModel state,
  ) {
    if (state.isCompleted || state.questions.isEmpty) {
      return state;
    }

    final question = state.questions[state.currentQuestionIndex];
    final input = state.currentInputValue.trim();

    if (input.isEmpty) {
      return state.copyWith(
        validationError: 'Please enter a value to continue.',
      );
    }

    final parsedValue = double.tryParse(input);
    if (parsedValue == null) {
      return state.copyWith(
        validationError: 'Please provide a valid numeric value.',
      );
    }

    if (question.minValue != null && parsedValue < question.minValue!) {
      return state.copyWith(
        validationError:
            'Minimum for this step is ${_formatNumeric(question.minValue!)}.',
      );
    }

    if (question.maxValue != null && parsedValue > question.maxValue!) {
      return state.copyWith(
        validationError:
            'Maximum for this step is ${_formatNumeric(question.maxValue!)}.',
      );
    }

    final updatedAnswers = Map<String, double>.from(state.answers)
      ..[question.fieldKey] = parsedValue;

    final updatedMessages = [
      ...state.messages,
      _buildMessage(
        sender: DashboardIntakeMessageSender.user,
        text: 'Rs ${_formatNumeric(parsedValue)}',
      ),
    ];

    final isLastQuestion =
        state.currentQuestionIndex >= state.questions.length - 1;

    if (isLastQuestion) {
      final profile = _buildProfile(updatedAnswers);
      final evaluation = _dashboardRepository.evaluateProfile(profile);

      return state.copyWith(
        answers: updatedAnswers,
        messages: [
          ...updatedMessages,
          _buildMessage(
            sender: DashboardIntakeMessageSender.bot,
            text:
                'Intake complete. Your live LoanReady Score is ${evaluation.loanReadyScore}. '
                'I have synced this profile to your dashboard simulator.',
          ),
        ],
        currentInputValue: '',
        isCompleted: true,
        generatedProfile: profile,
        generatedEvaluation: evaluation,
        validationError: null,
      );
    }

    final nextIndex = state.currentQuestionIndex + 1;
    final nextQuestion = state.questions[nextIndex];

    return state.copyWith(
      answers: updatedAnswers,
      messages: [
        ...updatedMessages,
        _buildMessage(
          sender: DashboardIntakeMessageSender.bot,
          text: nextQuestion.prompt,
        ),
      ],
      currentQuestionIndex: nextIndex,
      currentInputValue: '',
      validationError: null,
    );
  }

  DashboardProfileModel _buildProfile(Map<String, double> answers) {
    final initial = _dashboardRepository.getInitialProfile();

    return initial.copyWith(
      monthlyIncome:
          answers[DashboardIntakeLocalDataSource.monthlyIncomeField] ??
          initial.monthlyIncome,
      existingEmi:
          answers[DashboardIntakeLocalDataSource.existingEmiField] ??
          initial.existingEmi,
      desiredLoanAmount:
          answers[DashboardIntakeLocalDataSource.desiredLoanAmountField] ??
          initial.desiredLoanAmount,
      tenureMonths:
          answers[DashboardIntakeLocalDataSource.tenureMonthsField] ??
          initial.tenureMonths,
      savingsBuffer:
          answers[DashboardIntakeLocalDataSource.savingsBufferField] ??
          initial.savingsBuffer,
    );
  }

  DashboardIntakeMessageModel _buildMessage({
    required DashboardIntakeMessageSender sender,
    required String text,
  }) {
    final now = DateTime.now();

    return DashboardIntakeMessageModel(
      id: '${sender.name}_${now.microsecondsSinceEpoch}',
      sender: sender,
      text: text,
      createdAt: now,
    );
  }

  String _formatNumeric(double value) {
    if (value == value.roundToDouble()) {
      return value.toStringAsFixed(0);
    }
    return value.toStringAsFixed(2);
  }
}
