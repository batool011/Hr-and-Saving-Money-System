import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:career/core/constant/class/app_string.dart';
import 'package:career/core/widget/under_line_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../../../core/widget/custom_list_view.dart';
import '../../../../../core/widget/custom_text_field_search.dart';
import '../getx/controller/home_controller.dart';
import '../widget/custom_home_app_bar.dart';
import '../widget/custom_slider.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: [
            CustomHomeAppBar(),
            CustomSlider(),
            CustomTextFieldSearch(),
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
            CustomListView()

          ],
        ),
    );
  }
}
