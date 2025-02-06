import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pfe_project/App/core/componants/text_field.dart';
import 'package:pfe_project/App/core/componants/seconnecter.dart';
import 'package:pfe_project/App/core/componants/title.dart';
import 'package:pfe_project/App/core/style/colors.dart';
import 'package:pfe_project/App/modules/forgotpassword/controllers/forgotpassword_controller.dart';


class ForgotpasswordView extends GetView<ForgotpasswordController>{
 const ForgotpasswordView({super.key});
@override

  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(onPressed: (){Get.toNamed("/login");}, icon:Icon(Icons.arrow_back_ios,color: AppColors.primary,)),
        
        title:CustomTitle(text:"Définir Le Mot De Passe"),
        
      ),
      body: Container(
       margin: EdgeInsets.only(top: 40),
        width: double.infinity, 
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.background,
        ),

        child:
             Column(
          mainAxisAlignment:
              MainAxisAlignment.start, 
          crossAxisAlignment:
              CrossAxisAlignment.center,
          children: [
             Text("Enter votre Nouveau Mot De Passe",style: TextStyle(fontWeight: FontWeight.w300,fontSize:12,fontFamily: "League"
              ),),

            SizedBox(height: 100),
            Information(hint: "Mot De Passe",keyboardType: TextInputType.visiblePassword,obscureText: true, controller:emailcontroller,  icon: Icon(Icons.lock_outline,color: AppColors.primary,),backgroundColor: AppColors.secondary),
            SizedBox(height: 20),
            Information(hint: "Confirme Mot De Passe", keyboardType: TextInputType.visiblePassword,obscureText: true,controller:passwordcontroller,  icon: Icon(Icons.lock_outline,color: AppColors.primary,),backgroundColor: AppColors.secondary),
           
            SizedBox(height: 50),
            CustomButton(text: "Créer un nouveaux ", onPressed:(){},backgroundColor: AppColors.primary
            ,textColor: AppColors.background,width: 200,),
      

             
          ],
        ),
            
          
        
      ),
    );
  }





}