import 'package:get/get.dart';

import '../controllers/signup_doctor_controller.dart';

// ignore: camel_case_types
class Signup_doctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Signup_docotrController>(
      () =>Signup_docotrController(),
    );
  }
}
