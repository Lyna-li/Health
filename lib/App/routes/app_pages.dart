// ignore_for_file: constant_identifier_names



import 'package:get/get.dart';

import 'package:pfe_project/App/modules/register/bindings/register_binding.dart';
import 'package:pfe_project/App/modules/register/views/register_view.dart';

import 'package:pfe_project/App/modules/login/bindings/login_binding.dart';
import 'package:pfe_project/App/modules/login/views/login_view.dart';

import 'package:pfe_project/App/modules/forgotpassword/bindings/forgotpassword_binding.dart';
import 'package:pfe_project/App/modules/forgotpassword/views/forgotpassword_view.dart';

import 'package:pfe_project/App/modules/signup_doctor/bindings/signup_doctor_binding.dart';
import 'package:pfe_project/App/modules/signup_doctor/views/signup_doctor_view.dart';

import 'package:pfe_project/App/modules/signup_doctor/bindings/signup_doctor_h_binding.dart';
import 'package:pfe_project/App/modules/signup_doctor/views/signup_doctor_h_view.dart';


import 'package:pfe_project/App/modules/signup_doctor/bindings/signup_doctor_c_binding.dart';
import 'package:pfe_project/App/modules/signup_doctor/views/signup_doctor_c_view.dart';

import 'package:pfe_project/App/modules/signup_patient/bindings/signup_patient_binding.dart';
import 'package:pfe_project/App/modules/signup_patient/views/signup_patient_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = _Paths.REGISTER;

  static final routes = [
    // GetPage(
    //   name: _Paths.HOME,
    //   page: () =>  HomeView(),
    //   binding: HomeBinding(),
    // ),
    

    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASSWORD,
      page: () =>ForgotpasswordView(),
      binding:ForgotpasswordBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUPDOCTOR,
      page: () => Signup_doctorView(),
      binding: Signup_doctorBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUPDOCTOR_H,
      page: () => Signup_doctor_hView(),
      binding: Signup_doctorhBinding(),
    ),
     GetPage(
      name: _Paths.SIGNUPDOCTOR_C,
      page: () => Signup_doctor_cView(),
      binding:Signup_doctorcBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUPPATIENT,
      page: () => Signup_patientView(),
      binding:Signup_patientBinding(),
    ),
  ];
}



