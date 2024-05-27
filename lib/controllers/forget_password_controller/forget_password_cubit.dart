import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitial());

  //get method
  ForgetPasswordCubit get(context) {
    return BlocProvider.of(context);
  }

  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  //send email verification
  send(){
    if (formKey.currentState!.validate()) {
      //send to email function
    }
  }
}
