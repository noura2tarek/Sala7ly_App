import 'package:flutter/material.dart';
import '../../../../core/resources/app-strings.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_styles.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key, required this.onTab});
  final void Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.0,
      decoration: const BoxDecoration(
        color: AppColors.darkBrown,
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
      child: MaterialButton(
        onPressed: onTab,
        child: Column(
          children: [
            Text(
              AppStrings.continueS,
              style: interMedium(
                fontStyle: FontStyle.normal,
                fontSize: 19.0,
              ),
            ),
            Text(
              AppStrings.findNearby,
              style: interMedium(
                fontSize: 11.0,
                fontStyle: FontStyle.normal,
                color: AppColors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
