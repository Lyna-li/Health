
import 'package:get/get.dart';

class SplashController extends GetxController {
  var opacity = 0.0.obs;
 @override
  void onInit() {
    super.onInit();
    // Fade in the splash logo after 1 second
    Future.delayed(Duration(seconds: 1), () {
      opacity.value = 1.0;  // Fade in the splash screen logo
    });
    
    
  }
}