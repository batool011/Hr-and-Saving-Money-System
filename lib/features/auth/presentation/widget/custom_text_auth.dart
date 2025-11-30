import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:flutter/material.dart';

class CustomTextAuth extends StatelessWidget {
  const CustomTextAuth({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.03.h(context),horizontal: 0.08.w(context) ),
      child: Text(text,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColor.lightPrimaryColor.withAlpha(40)),),
    );
  }
}
