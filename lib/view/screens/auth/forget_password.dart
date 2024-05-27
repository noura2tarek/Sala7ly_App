import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sala7ly_app/controllers/forget_password_controller/forget_password_cubit.dart';
import 'package:sala7ly_app/core/resources/app-strings.dart';
import 'package:sala7ly_app/core/resources/app_colors.dart';
import 'package:sala7ly_app/view/screens/auth/widgets/custom_button.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.8,
              image: AssetImage(AppImages.woodImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 110.0,
            ),
            child: Center(
              child: BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
                listener: (context, state) {},
                builder: (context, state) {
                  var cubit = ForgetPasswordCubit().get(context);
                  return Form(
                    key: cubit.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11.0),
                          child: Text(
                            AppStrings.resetPassword,
                            style: interBold(
                                fontSize: 32.0, fontStyle: FontStyle.normal),
                          ),
                        ),
                        const SizedBox(
                          height: 169.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 55.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppStrings.enterEmailAddress,
                                style: interRegular(
                                    fontSize: 12.0,
                                    fontStyle: FontStyle.normal),
                              ),
                              /*-----   Email form field-----*/
                              Container(
                                height: 53.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: AppColors.primaryColor,
                                ),
                                child: TextFormField(
                                  controller: cubit.emailController,
                                  cursorColor: AppColors.white,
                                  cursorHeight: 25.0,
                                  keyboardType: TextInputType.emailAddress,
                                  style:
                                      interRegular(fontStyle: FontStyle.normal),
                                  decoration: InputDecoration(
                                    fillColor: AppColors.white,
                                    hintText: AppStrings.hintText,
                                    hintStyle: interRegular(
                                        fontSize: 13.0,
                                        fontStyle: FontStyle.normal,
                                        color:
                                            AppColors.white.withOpacity(0.7)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                      borderSide: BorderSide(
                                          color: AppColors.primaryColor
                                              .withOpacity(0.8)),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                AppStrings.information,
                                style: interRegular(
                                    fontSize: 10.0,
                                    fontStyle: FontStyle.normal),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              /*----- Send button -----*/ //
                              Align(
                                alignment: Alignment.center,
                                child: CustomButton(
                                  buttonText: AppStrings.send,
                                  onPressed: () {
                                    cubit.send();
                                  },
                                ),
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
