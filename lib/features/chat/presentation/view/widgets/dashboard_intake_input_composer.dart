part of '../../../../../loanscope.dart';

class DashboardIntakeInputComposer extends StatefulWidget {
  const DashboardIntakeInputComposer({
    super.key,
    required this.question,
    required this.inputValue,
    required this.validationError,
    required this.isCompleted,
    required this.onInputChanged,
    required this.onSubmit,
    required this.onOptionSelected,
    required this.onRestart,
  });

  final DashboardIntakeQuestionModel? question;
  final String inputValue;
  final String? validationError;
  final bool isCompleted;
  final ValueChanged<String> onInputChanged;
  final VoidCallback onSubmit;
  final ValueChanged<DashboardIntakeOptionModel> onOptionSelected;
  final VoidCallback onRestart;

  @override
  State<DashboardIntakeInputComposer> createState() =>
      _DashboardIntakeInputComposerState();
}

class _DashboardIntakeInputComposerState
    extends State<DashboardIntakeInputComposer> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.inputValue);
  }

  @override
  void didUpdateWidget(covariant DashboardIntakeInputComposer oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.inputValue != widget.inputValue &&
        _controller.text != widget.inputValue) {
      _controller.text = widget.inputValue;
      _controller.selection = TextSelection.collapsed(
        offset: _controller.text.length,
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isCompleted) {
      return DashboardCardWrapper(
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 46,
                child: OutlinedButton.icon(
                  onPressed: widget.onRestart,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Restart Intake'),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: SizedBox(
                height: 46,
                child: ElevatedButton.icon(
                  onPressed: () => context.go(AppRoutes.dashboard.path),
                  icon: const Icon(Icons.dashboard_customize_outlined),
                  label: const Text('Dashboard'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    final question = widget.question;
    if (question == null) {
      return const SizedBox.shrink();
    }

    final isChoiceType =
        question.inputType == DashboardIntakeInputType.singleChoice &&
        question.options.isNotEmpty;

    return DashboardCardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isChoiceType)
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: question.options.map((option) {
                return ChoiceChip(
                  label: Text(option.label),
                  selected:
                      widget.inputValue.trim() == _formatNumeric(option.value),
                  onSelected: (_) => widget.onOptionSelected(option),
                );
              }).toList(),
            ),
          if (isChoiceType) const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  onChanged: widget.onInputChanged,
                  decoration: InputDecoration(
                    hintText: question.hint ?? 'Enter value',
                    filled: true,
                    fillColor: AppColors.colorF5F8FB,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                height: 48,
                width: 48,
                child: ElevatedButton(
                  onPressed: _controller.text.trim().isEmpty
                      ? null
                      : widget.onSubmit,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Icon(Icons.send_rounded, size: 20),
                ),
              ),
            ],
          ),
          if (widget.validationError != null) ...[
            const SizedBox(height: 6),
            InterText(
              widget.validationError!,
              size: 11,
              color: AppColors.colorEF4444,
            ),
          ],
        ],
      ),
    );
  }

  String _formatNumeric(double value) {
    if (value == value.roundToDouble()) {
      return value.toStringAsFixed(0);
    }
    return value.toStringAsFixed(2);
  }
}
