import 'package:flutter/material.dart';
import 'package:sala7ly_app/core/resources/routes_manager.dart';
import 'package:sala7ly_app/core/resources/app-strings.dart';
import 'package:sala7ly_app/view/screens/auth/widgets/custom_button.dart';
import 'package:sala7ly_app/view/screens/auth/widgets/custom_login_form_field.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';

//make it with cubit
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
          child: Center(
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
                        AppStrings.login,
                        style: interBold(fontSize: 40.0),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    /*-----   form fields -----*/
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.userName,
                              style: interRegular(fontSize: 12.0),
                            ),
                            /*----- email/ user name form field -----*/ //
                            CustomLoginField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              validatorText: AppStrings.emailValidator,
                              obsecure: false,
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              AppStrings.password,
                              style: interRegular(fontSize: 12.0),
                            ),
                            /*----- password form field -----*/ //
                            CustomLoginField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordController,
                              validatorText: AppStrings.passwordValidator,
                              obsecure: true,
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            /*----- Login button -----*/ //
                            Align(
                              alignment: Alignment.center,
                              child: CustomButton(
                                buttonText: AppStrings.login,
                                onPressed: () {
                                  if(formKey.currentState!.validate()){
                                    //login function
                                  }
                                },
                              ),
                            ),
                            /*----- Forget password button -----*/ //
                            Align(
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.forgetPasswordRoute);
                                },
                                child: Text(
                                  AppStrings.forgetPassword,
                                  style: interRegular(
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /*----- Create account button -----*/
                    Padding(
                      padding: const EdgeInsets.only(top: 75.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.dontHaveAccount,
                            style: interRegular(),
                          ),
                          /*----- Create account button -----*/ //
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.registerRoute);
                            },
                            child: Text(
                              AppStrings.createOne,
                              style: interRegular(),
                            ),
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
      ),
    );
  }
}
