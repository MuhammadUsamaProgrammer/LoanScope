import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../loanscope.dart';
import '../../../dashboard/presentation/provider/dashboard_provider.dart';

part 'dashboard_intake_provider.g.dart';

@riverpod
class DashboardIntakeP extends _$DashboardIntakeP {
  DashboardIntakeRepository get _repository =>
      ref.read(dashboardIntakeRepository);

  @override
  DashboardIntakeStateModel build() {
    return _repository.getInitialState();
  }

  void updateInput(String value) {
    state = _repository.updateCurrentInput(state, value);
  }

  void chooseOption(DashboardIntakeOptionModel option) {
    state = _repository.selectOption(state, option);
    submitAnswer();
  }

  void submitAnswer() {
    state = _repository.submitCurrentAnswer(state);

    if (state.isCompleted && state.generatedProfile != null) {
      ref
          .read(dashboardPProvider.notifier)
          .hydrateProfile(state.generatedProfile!);
    }
  }

  void restart() {
    state = _repository.getInitialState();
  }
}
