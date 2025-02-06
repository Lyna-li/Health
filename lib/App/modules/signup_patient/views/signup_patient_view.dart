import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pfe_project/App/core/componants/seconnecter.dart';
import 'package:pfe_project/App/core/componants/text_field.dart';
import 'package:pfe_project/App/core/componants/title.dart';
import 'package:pfe_project/App/core/style/colors.dart';
import 'package:pfe_project/App/modules/signup_patient/controllers/signup_patient_controller.dart';

// ignore: camel_case_types
class Signup_patientView extends GetView<Signup_patientController> {
  const Signup_patientView({super.key});

  @override
  Widget build(BuildContext context) {
  
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    final TextEditingController usernamecontroller = TextEditingController();
    final TextEditingController numberphonecontroller = TextEditingController();
    final TextEditingController birthdaycontroller = TextEditingController();
    final TextEditingController adressecontroller = TextEditingController();
    final TextEditingController wilayacontroller = TextEditingController();

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
                  SizedBox(height: 20),
                  Information(
                      hint: "Nom Et Prénom",
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      controller: usernamecontroller,
                      icon: Icon(
                        Icons.person_outline,
                        color: AppColors.primary,
                      ),
                      backgroundColor: AppColors.secondary),
                  SizedBox(height: 20),
                  Information(
                    hint: "Mot De Passe",
                    keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
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
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      controller: emailcontroller,
                      icon: Icon(
                        Icons.email_outlined,
                        color: AppColors.primary,
                      ),
                      backgroundColor: AppColors.secondary),
                  SizedBox(height: 20),
                  Information(
                    hint: "Num de Téléphone",
                    keyboardType: TextInputType.phone,
                      obscureText: false,
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
                      keyboardType: TextInputType.datetime,
                      obscureText: false,
                      controller: birthdaycontroller,
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        color: AppColors.primary,
                      ),
                      backgroundColor: AppColors.secondary),
                  SizedBox(height: 20),
                  Information(
                    hint: "Adresse",
                    keyboardType: TextInputType.streetAddress,
                      obscureText: false,
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
                  Information(
                      hint: "Wilaya",
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      controller: wilayacontroller,
                      icon: Icon(
                        Icons.arrow_drop_down_outlined,
                        color: AppColors.primary,
                      ),
                      backgroundColor: AppColors.secondary),
                     SizedBox(
                    height: 20,
                  ),
                  Information(
                      hint: "Cité",
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      controller: wilayacontroller,
                      icon: Icon(
                        Icons.arrow_drop_down_outlined,
                        color: AppColors.primary,
                      ),
                      backgroundColor: AppColors.secondary),

                  SizedBox(height: 20),

                  CustomButton(
                    text: "S'inscrire",
                    onPressed: () {},
                    backgroundColor: AppColors.primary,
                    textColor: AppColors.background,
                    width: 200,
                  ),
                     Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Vous avez un compte?",style: TextStyle(fontSize: 11,fontFamily: "League")),
              IconButton(onPressed: (){Get.toNamed("/login");}, icon: Text("Connecter-vous",style: TextStyle(color: AppColors.primary,fontSize: 11,fontFamily: "League"),))],)
                ],
              ),
            ],
          )),
    );
  }
}
