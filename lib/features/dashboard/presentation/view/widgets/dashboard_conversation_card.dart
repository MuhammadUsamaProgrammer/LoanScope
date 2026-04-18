part of '../../../../../loanscope.dart';

class DashboardConversationCard extends StatelessWidget {
  const DashboardConversationCard({
    super.key,
    required this.loanReadyScore,
    required this.onStartIntake,
  });

  final int loanReadyScore;
  final VoidCallback onStartIntake;

  @override
  Widget build(BuildContext context) {
    return DashboardCardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: AppColors.colorF4F8FE,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.smart_toy_outlined,
                  color: AppColors.color3182CE,
                  size: 18,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: InterText(
                  'Conversation With AI',
                  size: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.colorECFDF5,
                  borderRadius: BorderRadius.circular(99),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.assistant,
                      size: 14,
                      color: AppColors.color10B981,
                    ),
                    SizedBox(width: 4),
                    InterText(
                      'Assistant',
                      size: 11,
                      color: AppColors.color10B981,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const DashboardChatBubble(
            text: 'Hi Adeel, what is your monthly net income?',
            isBot: true,
          ),
          const SizedBox(height: 8),
          const DashboardChatBubble(
            text: 'Around Rs 65,000 per month.',
            isBot: false,
          ),
          const SizedBox(height: 8),
          DashboardChatBubble(
            text:
                'Got it. LoanReady Score moved to $loanReadyScore. Next, your existing monthly EMIs?',
            isBot: true,
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onStartIntake,

              icon: const Icon(
                Icons.auto_awesome_outlined,
                size: 18,
                color: AppColors.white,
              ),
              label: const InterText(
                'Start Real AI Intake',
                color: AppColors.white,
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColors.primary,
                // overlayColor: AppColors.primary.withOpacity(0.1),
                surfaceTintColor: AppColors.primary,
                backgroundColor: AppColors.color3182CE,
                minimumSize: const Size.fromHeight(44),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardChatBubble extends StatelessWidget {
  const DashboardChatBubble({
    super.key,
    required this.text,
    required this.isBot,
  });

  final String text;
  final bool isBot;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isBot ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 290),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: isBot ? AppColors.colorF5F8FB : AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: InterText(
          text,
          size: 12,
          height: 1.35,
          color: isBot ? AppColors.color333333 : AppColors.white,
        ),
      ),
    );
  }
}
