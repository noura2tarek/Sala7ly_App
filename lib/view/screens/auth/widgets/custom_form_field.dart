import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_styles.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    super.key,
    required this.hintText,
    required this.iconLink,
    required this.controller,
    this.obsecure = false,
    required this.keyboardType,
    this.validatorText,
  });

  final String hintText;
  final String iconLink;
  final TextEditingController controller;
  String? validatorText = '';
  final bool obsecure;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.0,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obsecure,
        keyboardType: keyboardType,
        cursorColor: AppColors.white,
        cursorHeight: 30.0,
        style: interRegular(fontStyle: FontStyle.normal),
        validator: (String? value) {
          if (value!.isEmpty) {
            return validatorText;
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: interRegular(fontSize: 13.0, fontStyle: FontStyle.normal),
          suffixIcon: Image(
            image: AssetImage(iconLink),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
