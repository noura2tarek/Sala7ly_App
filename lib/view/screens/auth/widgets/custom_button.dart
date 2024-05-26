import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53.0,
      width: 110.0,
      child: MaterialButton(
        color: AppColors.primaryColor,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: interBold(
            fontSize: 17.0,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
