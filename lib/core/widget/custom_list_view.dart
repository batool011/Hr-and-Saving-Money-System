import 'package:career/core/constant/class/app_asset.dart';
import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 30,
        itemBuilder: (context,index){
      return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 0.05.w(context),vertical: 0.005.h(context)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.lightGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset(AppAsset.neuw,height: 100,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("DreamWeb",style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColor.blackLight,fontSize: 10),),
                      4.verticalSpace(),
                      Text("Sr. UI UX Designer",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w700),),
                      5.verticalSpace(),
                      Row(children: [
                        SvgPicture.asset(AppAsset.locationHome,height: 10,),
                        Text("Damascus, Syria",style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColor.blackLight,fontSize: 10),),
                       60.horizontalSpace(),
                        Row(
                          children: [
                           Container(
                           padding: EdgeInsets.symmetric(horizontal: 0.02.w(context),vertical: 0.003.h(context)),
                           decoration: BoxDecoration(
                           color: AppColor.lightBlue.withAlpha(25),
                           borderRadius: BorderRadius.circular(20),
                           ),
                             child: Text("On Site",style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColor.lightBlue,fontSize: 8),),
                           ),
                            5.horizontalSpace(),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 0.02.w(context),vertical: 0.003.h(context)),
                              decoration: BoxDecoration(
                              color: AppColor.lightCyan.withAlpha(25),
                              borderRadius: BorderRadius.circular(20),
                            ),
                              child: Text("On Site",style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColor.cyan,fontSize: 8),),
                            ),
                          ],
                        )
                      ],
                      ),

                    ],
                  ),

                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0.05.w(context),vertical: 0.013.h(context)),
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20))
                ),
                child: Text("10k/month",style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 10,fontWeight: FontWeight.w700),),
              ),
            ),
          ],
        ),
      );
    });
  }
}
