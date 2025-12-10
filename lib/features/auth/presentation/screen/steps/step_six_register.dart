import 'package:career/core/constant/class/app_asset.dart';
import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:career/core/widget/under_line_text.dart';
import 'package:career/features/auth/presentation/widget/addition_section.dart';
import 'package:career/features/auth/presentation/widget/custom_text_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/constant/class/app_string.dart';
import '../../getx/controller/register_controller.dart';
import '../../widget/sub_title_steps.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class CircularImageWithArc extends StatelessWidget {
  final String image;

  const CircularImageWithArc({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [
          /// ---- ARC (الدائرة المقطوعة) ----
          CustomPaint(
            size: const Size(150, 150),
            painter: ArcPainter(
              color: Colors.blue,
              strokeWidth: 10,
              startAngle: -pi / 2,
              sweepAngle: pi * 1.3, // مقدار القطع
            ),
          ),

          /// ---- SHADOW + IMAGE ----
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ---------------- PAINTER FOR THE ARC ----------------
class ArcPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double startAngle;
  final double sweepAngle;

  ArcPainter({
    required this.color,
    required this.strokeWidth,
    required this.startAngle,
    required this.sweepAngle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    final paintArc = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paintArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class StepSixRegister extends GetView<RegisterController> {
  const StepSixRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SubTitleSteps(text: AppString.uploadYourPhoto.tr,),
        23.verticalSpace(),
       CustomTextAuth(text: AppString.pleaseEnterYourPhoto.tr),
        43.verticalSpace(),
        Image.asset(AppAsset.profileImage,height: 100,),
        12.verticalSpace(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add,color: AppColor.lightCyan,size: 14,),
            UnderLineText(text: AppString.addAPhoto.tr,onTap: (){
              print("batoololdopsk,kfs");
              controller.pickImage();},),
          ],
        )
      ],

    );
  }
}
