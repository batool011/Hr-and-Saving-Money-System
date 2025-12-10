import 'package:career/core/constant/class/app_asset.dart';
import 'package:career/core/constant/class/app_color.dart';
import 'package:career/core/constant/class/app_size.dart';
import 'package:career/core/widget/custom_white_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 0.05.w(context)),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Amer Abo Saeed",style: Theme.of(context).textTheme.bodySmall,),
                Row(
                  children: [
                    SvgPicture.asset(AppAsset.locationHome,height: 10,),
                    10.horizontalSpace(),
                    Text("Damascus, Syria",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w700 ),)
                  ],
                )
              ],
            ),
            Spacer(),
            // Container(
            //   margin: EdgeInsetsDirectional.only(end: 0.02.w(context)),
            //   decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   border: Border.all(color: AppColor.primaryColor),
            // ),child:  ClipOval(
            //   child: Image.asset(
            //     "assets/images/Image.png",
            //     height: 0.05.h(context),
            //     width: 0.1.w(context),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // ),
            CustomWhiteContainer(icon: AppAsset.notification,withRadius: true,),
            CustomWhiteContainer(icon: AppAsset.setting,withRadius: true,)


          ],
        ),
      ),
    );
  }
}
