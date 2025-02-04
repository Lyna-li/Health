import 'package:flutter/material.dart';
import 'package:pfe_project/App/core/style/colors.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  
  
  

  const CustomTitle({
    super.key,
    required this.text,
    
   
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,fontSize:20,fontFamily: "League",
        color: AppColors.primary,
      ),
    );
  }
}
