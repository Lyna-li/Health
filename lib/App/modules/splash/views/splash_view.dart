import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pfe_project/App/core/style/colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate to Home after 3 seconds
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed('/register');
    });

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      // ignore: deprecated_member_use
                      AppColors.primary.withOpacity(0.7), // Blue
                      // ignore: deprecated_member_use
                      AppColors.secondary.withOpacity(0.2), // Darker Blue
                    ],            
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child:Image.asset(
              "assets/images/splash.png",
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          )

 
         
        ],
      ),
    );
  }
}
