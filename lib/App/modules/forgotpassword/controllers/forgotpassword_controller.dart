

import 'package:get/get.dart';

class ForgotpasswordController extends GetxController {
  var opacity = 0.0.obs;
 @override
  void onInit() {
    super.onInit();
    
    Future.delayed(Duration(seconds: 1), () {
      opacity.value = 1.0;  
    });
    
   
  
  }
}