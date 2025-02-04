import 'package:get/get.dart';

import '../controllers/signup_doctor_h_controller.dart';

// ignore: camel_case_types
class Signup_doctorhBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Signup_docotr_hController>(
      () =>Signup_docotr_hController(),
    );
  }
}
