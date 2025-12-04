import 'package:career/core/constant/class/app_asset.dart';
import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:career/core/constant/class/app_string.dart';
import 'package:career/core/widget/under_line_text.dart';
import 'package:career/features/auth/presentation/widget/custom_white_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/widget/custom_card.dart';
import '../../../../../core/widget/custom_text_field_search.dart';
import '../getx/controller/home_controller.dart';
import '../widget/custom_home_app_bar.dart';
import '../widget/custom_slider.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
        body: ListView(
          shrinkWrap: true,
          children: [
            25.verticalSpace(),
            CustomHomeAppBar(),
            10.verticalSpace(),
            CustomSlider(),
            Row(
              children: [
                Expanded(child: CustomTextFieldSearch()),
                CustomWhiteContainer(icon: AppAsset.filter,),
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 0.03.h(context),vertical: 0.02.h(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppString.lastResearchFilter.tr,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColor.primaryColor,fontWeight: FontWeight.w700,fontSize: 20),),
                  UnderLineText(text: AppString.seeAll.tr)
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 30,
                itemBuilder: (context,index){
                  return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 0.05.w(context),vertical: 0.005.h(context)),
                      child: CustomCard(),
                  );
                })

          ],
        ),
    );
  }
}
