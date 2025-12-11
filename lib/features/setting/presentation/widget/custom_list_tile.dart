import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.leading, required this.title,this.trailing});
final String leading;
final String title;
final String? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 1,
      leading: SvgPicture.asset(leading),
      title: Text(title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14,fontWeight: FontWeight.w400)),
      trailing: Text(trailing??"",style: Theme.of(context).textTheme.labelSmall),
    );
  }
}
