import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pfe_project/App/core/componants/seconnecter.dart';
import 'package:pfe_project/App/core/componants/text_field.dart';
import 'package:pfe_project/App/core/componants/title.dart';
import 'package:pfe_project/App/core/style/colors.dart';
import 'package:pfe_project/App/modules/signup_doctor/controllers/signup_doctor_c_controller.dart';

// ignore: camel_case_types
class Signup_doctor_cView extends GetView<Signup_docotr_cController> {
  const Signup_doctor_cView({super.key});

  @override
  Widget build(BuildContext context) {


    final TextEditingController wilayacontroller = TextEditingController();
    final TextEditingController hopitalcontroller = TextEditingController();
    final TextEditingController matriculecontroller = TextEditingController();
    final TextEditingController speacialitecontroller = TextEditingController();
        final TextEditingController numberphonecontroller = TextEditingController();

 

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: () {
              Get.toNamed('/signupdoctor');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.primary,
            )),
        title: CustomTitle(text: "Information De Travail"),
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
                      hint: "Num de CNRC",
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      controller: matriculecontroller,
                      icon: Icon(
                        Icons.badge_outlined,
                        color: AppColors.primary,
                      ),
                      backgroundColor: AppColors.secondary),
                  SizedBox(height: 20),
                  Information(
                    hint: "Nom De Cabinet",
                    keyboardType: TextInputType.text,
                      obscureText: false,
                    controller: hopitalcontroller,
                    icon: Icon(
                      Icons.health_and_safety,
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
                  Information(
                    hint: "Specailité",
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    controller: speacialitecontroller,
                    icon: Icon(
                      Icons.medication,
                      color: AppColors.primary,
                    ),
                    backgroundColor: AppColors.secondary,
                  ),
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
                    height: 80,
                  ),
                  CustomButton(
                    text: "S'inscrire",
                    onPressed: () {},
                    backgroundColor: AppColors.primary,
                    textColor: AppColors.background,
                    width: 200,
                  ),
                  SizedBox(
                    height: 30,
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
