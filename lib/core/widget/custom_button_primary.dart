import 'package:career/core/constant/class/app_size.dart';
import 'package:flutter/material.dart';
import '../constant/class/app_color.dart';

class CustomButtonPrimary extends StatelessWidget {
  const CustomButtonPrimary({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(vertical: 0.04.w(context), horizontal: 0.05.w(context)),
      margin: EdgeInsets.symmetric(vertical: 0.04.w(context), horizontal: 0.05.w(context)),
      decoration:
      BoxDecoration(color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(50),),
      child: Center(child: Text(text,style: Theme.of(context).textTheme.labelSmall,)),);
  }
}
