import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  //get method
  RegisterCubit get(context) {
    return BlocProvider.of(context);
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool checkBoxValue = false;


  //register method
  register(){
    if(formKey.currentState!.validate()){
      //register function
    }
  }


  //change checkbox
  changeCheckBox(bool? value){
    if (value != null) {
      checkBoxValue = value;
    }
    emit(RegisterCheckChanged());
  }

}
