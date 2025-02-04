import 'package:get/get.dart';

import '../controllers/signup_patient_controller.dart';

// ignore: camel_case_types
class Signup_patientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Signup_patientController>(
      () =>Signup_patientController(),
    );
  }
}
