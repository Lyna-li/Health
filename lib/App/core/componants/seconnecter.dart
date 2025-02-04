import 'package:flutter/material.dart';

import 'package:pfe_project/App/core/style/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double width;
  final double height;


  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    required this.width ,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroundColor ?? AppColors.primary),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor ?? AppColors.background,fontWeight: FontWeight.bold,fontFamily: "League"),
        ),
      ),
    );
  }
}
