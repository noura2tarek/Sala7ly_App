import 'package:flutter/material.dart';
import 'package:sala7ly_app/core/resources/app-strings.dart';
import 'package:sala7ly_app/view/screens/auth/widgets/custom_button.dart';
import 'package:sala7ly_app/view/screens/auth/widgets/custom_form_field.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';

//make it with cubit
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.8,
            image: AssetImage(AppImages.woodImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 153.0,
          ),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      AppStrings.createAccount,
                      style: interBold(fontSize: 35.0),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  /*-----   form fields -----*/
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0, right: 45.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /*-----  name form field -----*/ //
                        CustomFormField(
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          iconLink: AppImages.user1Icon,
                          hintText: AppStrings.fullName,
                          validatorText: AppStrings.nameValidator,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        /*----- email form field -----*/ //
                        CustomFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          iconLink: AppImages.email1Icon,
                          hintText: AppStrings.emailAddress,
                          validatorText: AppStrings.emailValidator,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        /*----- phone number form field -----*/ //
                        CustomFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          iconLink: AppImages.phoneIcon,
                          hintText: AppStrings.phoneNumber,
                          validatorText: AppStrings.phoneValidator,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        /*----- password form field -----*/ //
                        CustomFormField(
                          controller: passwordController,
                          obsecure: true,
                          keyboardType: TextInputType.visiblePassword,
                          iconLink: AppImages.lockIcon,
                          hintText: AppStrings.password2,
                          validatorText: AppStrings.passwordValidator,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        /*----- confirm password form field -----*/ //
                        CustomFormField(
                          controller: confirmPasswordController,
                          obsecure: true,
                          keyboardType: TextInputType.visiblePassword,
                          iconLink: AppImages.checkIcon,
                          hintText: AppStrings.confirmPassword,
                          validatorText: AppStrings.passwordsDontMatch,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: checkBoxValue,
                              activeColor: AppColors.black,
                              fillColor:
                                  MaterialStatePropertyAll(AppColors.black),
                              side: BorderSide.none,
                              onChanged: (value) {
                                setState(() {
                                  if (value != null) {
                                    checkBoxValue = value;
                                  }
                                });
                              },
                            ),
                            Text(
                              AppStrings.agreeWithTerms,
                              style: interBold(
                                fontSize: 12.0,
                                fontStyle: FontStyle.normal,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                        /*----- create account button -----*/ //
                        CustomButton(
                          buttonText: AppStrings.create,
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                              //register function
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
