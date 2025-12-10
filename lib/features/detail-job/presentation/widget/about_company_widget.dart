import 'package:career/features/detail-job/presentation/widget/map_widget.dart';
import 'package:flutter/cupertino.dart';

class AboutCompanyWidget extends StatelessWidget {
  const AboutCompanyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MapWidget()
      ],
    );
  }
}
