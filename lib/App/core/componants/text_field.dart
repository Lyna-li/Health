import 'package:flutter/material.dart';

import 'package:pfe_project/App/core/style/colors.dart';

class Information extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Color? backgroundColor;
  final Color? textColor;
  final double width;
  final double height;
  final Widget icon;
  final Color? iconcolor;
  final TextInputType keyboardType;
  final bool obscureText;

  const Information({
    super.key,
    required this.hint,
    required this.controller,
    this.backgroundColor,
    this.textColor = Colors.black54,
    this.iconcolor,
    this.width = 350,
    this.height = 60,
    required this.icon,
    required this.keyboardType,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
        ),
        child: TextField(
              controller: controller, 
              cursorColor:AppColors.primary,
              keyboardType:keyboardType,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hint,
                
                hintStyle: TextStyle(color: textColor,fontWeight: FontWeight.w200,fontSize: 14,fontFamily: "League"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: icon, 
                iconColor: iconcolor,
              ),
             
            ),
      ),
    );
  }
}
