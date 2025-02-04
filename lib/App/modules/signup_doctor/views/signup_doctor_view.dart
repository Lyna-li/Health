import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pfe_project/App/core/componants/seconnecter.dart';
import 'package:pfe_project/App/core/componants/text_field.dart';
import 'package:pfe_project/App/core/componants/title.dart';
import 'package:pfe_project/App/core/style/colors.dart';
import 'package:pfe_project/App/modules/signup_doctor/controllers/signup_doctor_controller.dart';

// ignore: camel_case_types
class Signup_doctorView extends GetView<Signup_docotrController> {
  const Signup_doctorView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    final TextEditingController usernamecontroller = TextEditingController();
    final TextEditingController numberphonecontroller = TextEditingController();
    final TextEditingController birthdaycontroller = TextEditingController();
    final TextEditingController adressecontroller = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: () {
              Get.toNamed("/register");
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.primary,
            )),
        title: CustomTitle(text: "Information Personnelle"),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.background,
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Information(
                      hint: "Nom Et Prénom",
                      controller: usernamecontroller,
                      icon: Icon(
                        Icons.person_outline,
                        color: AppColors.primary,
                      ),
                      backgroundColor: AppColors.secondary),
                  SizedBox(height: 20),
                  Information(
                    hint: "Mot De Passe",
                    controller: passwordcontroller,
                    icon: Icon(
                      Icons.lock_outline,
                      color: AppColors.primary,
                    ),
                    backgroundColor: AppColors.secondary,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Information(
                      hint: "Email",
                      controller: emailcontroller,
                      icon: Icon(
                        Icons.email_outlined,
                        color: AppColors.primary,
                      ),
                      backgroundColor: AppColors.secondary),
                  SizedBox(height: 20),
                  Information(
                    hint: "Num de Téléphone",
                    controller: numberphonecontroller,
                    icon: Icon(
                      Icons.call_outlined,
                      color: AppColors.primary,
                    ),
                    backgroundColor: AppColors.secondary,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Information(
                      hint: "Date De Naissance",
                      controller: birthdaycontroller,
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        color: AppColors.primary,
                      ),
                      backgroundColor: AppColors.secondary),
                  SizedBox(height: 20),
                  Information(
                    hint: "Adresse",
                    controller: adressecontroller,
                    icon: Icon(
                      Icons.location_on_outlined,
                      color: AppColors.primary,
                    ),
                    backgroundColor: AppColors.secondary,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(height: 50),
                  CustomButton(
                    text: "S'inscrire",
                    onPressed: () {
                      Get.toNamed("/signupdoctorc");
                    },
                    backgroundColor: AppColors.primary,
                    textColor: AppColors.background,
                    width: 200,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Vous avez un compte?",
                          style: TextStyle(fontSize: 11, fontFamily: "League")),
                      IconButton(
                          onPressed: () {
                            Get.toNamed("/login");
                          },
                          icon: Text(
                            "Connecter-vous",
                            style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 11,
                                fontFamily: "League"),
                          ))
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
