import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height = 53.0,
    this.width = 110.0,
    this.fontSize = 17.0,
    this.color = AppColors.primaryColor,
    required this.buttonText,
    required this.onPressed,
  });

  final String buttonText;
  final void Function()? onPressed;
  final double? height ;
  final double? width;
  final double? fontSize;
  final Color? color ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        color: color,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: interBold(
            fontSize: fontSize!,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
