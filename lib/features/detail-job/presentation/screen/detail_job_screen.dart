import 'package:career/core/constant/class/app_asset.dart';
import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:career/core/constant/class/app_string.dart';
import 'package:career/core/widget/custom_button_secondry.dart';
import 'package:career/core/widget/under_line_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../getx/controller/detail_job_controller.dart';
import '../widget/about_company_widget.dart';
import '../widget/about_position_widget.dart';
import '../widget/custom_app_bar_detail_job.dart';

class DetailJobScreen extends GetView<DetailJoController> {
  const DetailJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
        appBar: PreferredSize(preferredSize: Size(double.infinity,310), child: CustomAppBarDetailJob(),),
      body: Obx(() {
      if (controller.selectedTab.value == 0) {
        return AboutPositionWidget();
      } else {
        return AboutCompanyWidget();
      }
    }),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.05.w(context)),
        height: 70,
        decoration: BoxDecoration(
            color: AppColor.primaryColor
        ),
        child: Row(
          children: [
            CustomButtonSecondry(text: AppString.applyNow.tr,),
            Spacer(),
            SvgPicture.asset(AppAsset.advCyan),
            4.horizontalSpace(),
            UnderLineText(text: AppString.saveAsABookmark.tr)
          ],
        ),
      ) ,
    );
  }
}
