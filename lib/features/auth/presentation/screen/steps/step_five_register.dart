import 'package:career/core/constant/class/app_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../core/constant/class/app_string.dart';
import '../../widget/sub_title_steps.dart';

class StepFiveRegister extends StatelessWidget {
  const StepFiveRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SubTitleSteps(text: AppString.workExperiences.tr,),
        23.verticalSpace(),
      ],
    );
  }
}
