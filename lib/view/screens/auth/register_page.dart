import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sala7ly_app/controllers/register_controller/register_cubit.dart';
import 'package:sala7ly_app/core/resources/app-strings.dart';
import 'package:sala7ly_app/view/screens/auth/widgets/custom_button.dart';
import 'package:sala7ly_app/view/screens/auth/widgets/custom_form_field.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
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
              child: BlocConsumer<RegisterCubit, RegisterState>(
                listener: (context, state) {},
                builder: (context, state) {
                  var cubit = RegisterCubit().get(context);
                  return Form(
                    key: cubit.formKey,
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
                          padding:
                              const EdgeInsets.only(left: 28.0, right: 45.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              /*-----  name form field -----*/ //
                              CustomFormField(
                                controller: cubit.nameController,
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
                                controller: cubit.emailController,
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
                                controller: cubit.phoneController,
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
                                controller: cubit.passwordController,
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
                                controller: cubit.confirmPasswordController,
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
                                    value: cubit.checkBoxValue,
                                    activeColor: AppColors.black,
                                    fillColor: MaterialStatePropertyAll(
                                        AppColors.black),
                                    side: BorderSide.none,
                                    onChanged: (value) {
                                      cubit.changeCheckBox(value);
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
                                  cubit.register();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
