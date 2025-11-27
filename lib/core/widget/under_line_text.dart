import 'package:flutter/cupertino.dart';

import '../constant/class/app_color.dart';

class UnderLineText extends StatelessWidget {
  const UnderLineText({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      textAlign: TextAlign.end,
      style: TextStyle(
        fontSize: 12,
        color: AppColor.lightCyan,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
        decorationThickness: 1,
        decorationColor: AppColor.lightCyan,
      ),
    );
  }
}
