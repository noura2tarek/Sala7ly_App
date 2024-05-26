import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_styles.dart';

class CustomLoginField extends StatelessWidget {
  CustomLoginField(
      {super.key,
      required this.controller,
      this.validatorText,
      this.obsecure = false, required this.keyboardType});

  final TextEditingController controller;
  String? validatorText = '';
  final bool obsecure;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      height: 53.0,
      child: TextFormField(
        keyboardType: keyboardType ,
        controller: controller,
        obscureText: obsecure,
        cursorHeight: 35.0,
        cursorColor: AppColors.white,
        validator: (String? value) {
          if (value!.isEmpty) {
            return validatorText;
          } else {
            return null;
          }
        },
        style: interRegular(fontStyle: FontStyle.normal),
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
