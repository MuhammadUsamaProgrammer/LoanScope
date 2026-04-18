part of '../../../../../loanscope.dart';

Widget ChatBar(BuildContext context) {
  return ClipRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: AppBar(
          backgroundColor: AppColors.white.withOpacity(0.85),
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: AppColors.colorEDF1F6.withOpacity(0.3),
              height: 1.0,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () => context.pop(),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.textColor,
                size: 18,
              ),
            ),

            //  Assets.images.bead.image(
            //   width: 24,
            //   height: 24,
            //   color: AppColors.textColor,
            // ),
          ),
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InterText(
                'Chat Assistant',
                size: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
              SizedBox(height: 4),
              InterText(
                'Loan Guidance',
                size: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.textColor,
              ),
            ],
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Assets.images.bead.image(
                width: 24,
                height: 24,
                color: AppColors.textColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: AppColors.primary,
                foregroundImage: Assets.images.profile.provider(),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
