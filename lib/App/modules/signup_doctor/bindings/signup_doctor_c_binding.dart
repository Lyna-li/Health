import 'package:get/get.dart';

import '../controllers/signup_doctor_c_controller.dart';

// ignore: camel_case_types
class Signup_doctorcBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Signup_docotr_cController>(
      () =>Signup_docotr_cController(),
    );
  }
}
