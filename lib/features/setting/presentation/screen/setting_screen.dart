import 'package:career/core/constant/class/app_asset.dart';
import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:career/core/widget/under_line_text.dart';
import 'package:career/features/setting/presentation/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/class/app_string.dart';
import '../../../../core/widget/custom_app_bar.dart';
import '../widget/custom_list_tile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      appBar: PreferredSize(preferredSize: Size(double.infinity,70),
          child: CustomAppBar(text: AppString.setting.tr,)),
      body: ListView(
        children: [
          Row(
            children: [
             // Image.asset()
              Text("User Name",style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 24,fontWeight: FontWeight.bold),),
              Spacer(),
              UnderLineText(text: AppString.accountSettings.tr)
            ],
          ),
          12.verticalSpace(),
          Container(
            decoration: BoxDecoration(
              color: AppColor.secondryColor,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight:Radius.circular(20) )
            ),
            child:Column(
              children: [
                CustomContainer(),
                CustomListTile(leading: AppAsset.notification, title: "Notification", trailing: AppAsset.advBold),
                Divider(color: AppColor.lightCyan,endIndent: 0.04.w(context),indent: 0.04.w(context),thickness: 0.7,),
                CustomListTile(leading: AppAsset.notification, title: "Notification", trailing: AppAsset.advBold),
                Divider(color: AppColor.lightCyan,endIndent: 0.04.w(context),indent: 0.04.w(context),thickness: 0.7,),
                CustomListTile(leading: AppAsset.notification, title: "Notification", trailing: AppAsset.advBold),
                Divider(color: AppColor.lightCyan,endIndent: 0.04.w(context),indent: 0.04.w(context),thickness: 0.7,),
                CustomListTile(leading: AppAsset.notification, title: "Notification", trailing: AppAsset.advBold),
                Divider(color: AppColor.lightCyan,endIndent: 0.04.w(context),indent: 0.04.w(context),thickness: 0.7,),
                CustomListTile(leading: AppAsset.notification, title: "Notification", trailing: AppAsset.advBold),
                Divider(color: AppColor.lightCyan,endIndent: 0.04.w(context),indent: 0.04.w(context),thickness: 0.7,),
                CustomListTile(leading: AppAsset.notification, title: "Notification", trailing: AppAsset.advBold),
                Divider(color: AppColor.lightCyan,endIndent: 0.04.w(context),indent: 0.04.w(context),thickness: 0.7,),

              ],
            )
          )
        ],
      ),
    );
  }
}
