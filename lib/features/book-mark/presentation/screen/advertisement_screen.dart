import 'package:career/core/constant/class/app_asset.dart';
import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:career/core/router/app_route.dart';
import 'package:career/core/router/routes_name.dart';
import 'package:career/core/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../core/constant/class/app_string.dart';
import '../../../../../../core/widget/custom_card.dart';
import '../../../../../../core/widget/under_line_text.dart';

class AdvertisementScreen extends StatelessWidget {
  const AdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity,70),
      child: CustomAppBar(text: AppString.bookmarks.tr,)),
      backgroundColor: AppColor.scaffoldColor,
      body: Column(
        children: [
          8.verticalSpace(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 0.05.w(context),vertical: 0.005.h(context)),
            child: Row(children: [
              Text("10 items"),
              Spacer(),
              SvgPicture.asset(AppAsset.sort),
              4.horizontalSpace(),
              UnderLineText(text: AppString.seeAll.tr),
            ],),
          ),
          16.verticalSpace(),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                itemCount: 30,
                itemBuilder: (context,index){
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 0.05.w(context)),
                    child: GestureDetector(
                      onTap: (){Get.toNamed(RoutesName.detailJob);},
                        child: CustomCard()),
                  );
                }),
          )
        ],
      ),
    );
  }
}
