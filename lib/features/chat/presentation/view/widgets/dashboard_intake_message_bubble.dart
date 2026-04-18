part of '../../../../../loanscope.dart';

class DashboardIntakeMessageBubble extends StatelessWidget {
  const DashboardIntakeMessageBubble({super.key, required this.message});

  final DashboardIntakeMessageModel message;

  @override
  Widget build(BuildContext context) {
    final isBot = message.sender == DashboardIntakeMessageSender.bot;

    return Align(
      alignment: isBot ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 290),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: isBot ? AppColors.colorF5F8FB : AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InterText(
              message.text,
              size: 12,
              height: 1.35,
              color: isBot ? AppColors.color333333 : AppColors.white,
            ),
            const SizedBox(height: 4),
            InterText(
              _formatTime(message.createdAt),
              size: 10,
              color: isBot
                  ? AppColors.color8A94A6
                  : AppColors.white.withOpacity(0.85),
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(DateTime value) {
    final hour = value.hour.toString().padLeft(2, '0');
    final minute = value.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
