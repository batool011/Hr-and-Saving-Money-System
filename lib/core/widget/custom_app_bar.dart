import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
      padding: EdgeInsets.symmetric(vertical: 0.025.h(context)),
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05.w(context)),
          child: Row(
            children: [
              GestureDetector(onTap: (){Get.back();},child: Icon(Icons.arrow_back,color: AppColor.secondryColor,)),
              120.horizontalSpace(),
              Text(text,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColor.secondryColor,fontWeight: FontWeight.w700),),
            ],
          ),
        ),
      ),
    );
  }
}
