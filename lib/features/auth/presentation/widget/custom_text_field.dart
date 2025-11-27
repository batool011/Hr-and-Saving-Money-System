import 'package:career/core/constant/class/app_size.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/class/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final IconData? suffixIcon;
  final Widget? prefix;
  final bool? obscureText;
  final VoidCallback? onSuffixTap;
  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.suffixIcon,
    this.prefix,
    this.obscureText = false,
    this.onSuffixTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric( horizontal: 0.05.w(context)),
      child: TextFormField(
        style: const TextStyle(fontSize: 14, color: AppColor.black),
        controller: controller,
        obscureText: obscureText!,
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: InkWell(
            onTap: onSuffixTap,
            child: Icon(suffixIcon, color: AppColor.primaryColor),
          ),
          hintText: hintText,
          hintStyle: Theme.of(
            context,
          ).textTheme.bodySmall!.copyWith(color: AppColor.darkGrey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(60),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(60),
            borderSide: const BorderSide(
              color: AppColor.primaryColor,
              width: 1.0,
            ),
          ),
          contentPadding:  EdgeInsets.symmetric(
            horizontal:  0.05.w(context),
            vertical:  0.05.w(context),
          ),
          filled: true,
          fillColor: AppColor.lightGrey,
        ),
      ),
    );
  }
}
