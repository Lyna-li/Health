import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pfe_project/App/core/componants/text_field.dart';
import 'package:pfe_project/App/core/componants/seconnecter.dart';
import 'package:pfe_project/App/core/style/colors.dart';
import 'package:pfe_project/App/modules/login/controllers/login_controller.dart';


class LoginView extends GetView<LoginController>{
 const LoginView({super.key});
@override

  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(onPressed: (){Get.toNamed("/register");}, icon:Icon(Icons.arrow_back_ios,color: AppColors.primary,)),
        
      ),
      body: Container(
        width: double.infinity, 
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.background,
        ),

        child:ListView(
          scrollDirection: Axis.vertical,
          children: [
             Column(
          mainAxisAlignment:
              MainAxisAlignment.start, 
          crossAxisAlignment:
              CrossAxisAlignment.center,
          children: [
            
            Image.asset(
              "assets/images/register.png",
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 60),
            Text("Se Connecter",style: TextStyle(color: AppColors.primary,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "League"),),
             SizedBox(height: 20),
             Text("Bienvennue Enter votre information Pour se Connecter",style: TextStyle(fontWeight: FontWeight.w300,fontSize:12,fontFamily: "League"
              ),),
            
             
            SizedBox(height: 50),
            Information(hint: "Email ou Num telephone", controller:emailcontroller,  icon: Icon(Icons.person_outline,color: AppColors.primary,),backgroundColor: AppColors.secondary),
            SizedBox(height: 20),
            Information(hint: "Mot De Passe", controller:passwordcontroller,  icon: Icon(Icons.lock_outline,color: AppColors.primary,),backgroundColor: AppColors.secondary),
            Row(mainAxisAlignment:MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
               child:  IconButton(onPressed: (){}, icon: Text("mot de passe oublié??",style: TextStyle(color: AppColors.primary,fontSize: 9,fontWeight: FontWeight.bold),)),
              ),
            ],),
            SizedBox(height: 50),
            CustomButton(text: "Se Connecter", onPressed:(){},backgroundColor: AppColors.primary
            ,textColor: AppColors.background,width: 200,),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Vous n'avez pas un compte?",style: TextStyle(fontSize: 11,fontFamily: "League")),Text("Inscrivez-vous",style: TextStyle(color: AppColors.primary,fontSize: 11,fontFamily: "League"),)],)
             
          ],
        ),
            
          ],
        )
      ),
    );
  }





}