import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';
import 'package:project_1/widgets/custom_icon_block.dart';

class SettingsLineWidget extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final Widget trailing;
  final VoidCallback action;
  final bool isSubtitle;

  const SettingsLineWidget({super.key, required this.leading, required this.title, required this.trailing, required this.action, this.subtitle ='', this.isSubtitle=true});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      alignment: .center,
      margin: .only(bottom: 2),
      width: size.width,
      height: size.height * .08,
      decoration: BoxDecoration(
        // color: AppColors.cartBgColor,
        // borderRadius: .circular(15),
      ),
      child: ListTile(
        leading: leading,
        title: Text(title, style: DefaultStyle.defaultTextBoldStyle,),
        subtitle: (isSubtitle) ? Text(subtitle, style: DefaultStyle.defaultLessTextStyle,) : SizedBox(),
        trailing: trailing,
        onTap: action,
      ),
    );
  }
}