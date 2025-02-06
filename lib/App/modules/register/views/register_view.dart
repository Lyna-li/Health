import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pfe_project/App/core/componants/seconnecter.dart';
import 'package:pfe_project/App/core/componants/title.dart';
import 'package:pfe_project/App/core/style/colors.dart';
import 'package:pfe_project/App/modules/register/controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.background,
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center everything vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center everything horizontally
          children: [
            Image.asset(
              "assets/images/apA.png",
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
            Text(
              "Sahty", // Custom text
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w200,
                  color: AppColors.primary,
                  fontFamily: "League" // Adjust based on your background
                  ),
            ),
            SizedBox(height: 40),
            Text(
              "Moins de papier, plus de liberté",
              style:
                  TextStyle(fontWeight: FontWeight.w200, fontFamily: "League"),
            ),
            SizedBox(height: 100),
            CustomButton(
              text: "Se Connecter",
              width: 200,
              onPressed: () {
                Get.toNamed("/login");
              },
              backgroundColor: AppColors.primary,
              textColor: AppColors.background,
            ),
            SizedBox(height: 20),
            CustomButton(
              width: 200,
              text: "S'inscrire",
              onPressed: () {
                _displayBottmSheet();
              },
              backgroundColor: AppColors.secondary,
              textColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

void _displayBottmSheet() {

  Get.bottomSheet(
     
      Stack(
        children: [
          BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), 
         child: Container(color: Colors.transparent),
        ),
    Container(
      height: 500,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(
            margin: EdgeInsets.only(bottom:20),
            height: 1,
            width: 70,
            decoration: BoxDecoration(
              border: Border(top:BorderSide.none,left:BorderSide.none,right:BorderSide.none),
             color:Colors.black,
            ),
           ),
            CustomTitle(text: "Vous etre"),
            SizedBox(height: 50),
            CustomButton(text: "Citoyenne", onPressed:(){Get.toNamed('/signuppatient');},backgroundColor: AppColors.secondary,textColor: AppColors.primary,width: 300,),
            SizedBox(height: 20),
            CustomButton(text: "Médecin", onPressed:(){Get.toNamed("/signupdoctor");},backgroundColor: AppColors.secondary,textColor: AppColors.primary,width: 300,),
            SizedBox(height: 20),
            CustomButton(text: "CNAS", onPressed:(){},backgroundColor: AppColors.secondary,textColor: AppColors.primary,width: 300,),
          ],
        )
      ),
    ),
        ],
      )

    
  );
}
