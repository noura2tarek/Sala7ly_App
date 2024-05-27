import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../core/resources/routes_manager.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  //get method
  LoginCubit get(context) {
    return BlocProvider.of(context);
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // login function
  login() {
    if (formKey.currentState!.validate()) {
      //login function
    }
  }

  //forget password method
  navToForgetPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgetPasswordRoute);
  }

  //go to register screen method
  navToRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerRoute);
  }
}
