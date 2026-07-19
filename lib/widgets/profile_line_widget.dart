import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';

class ProfileLineWidget extends StatelessWidget {
  final IconData leading;
  final String title;
  final IconData trailing;
  final VoidCallback action;

  const ProfileLineWidget({super.key, required this.leading, required this.title, required this.trailing, required this.action});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      alignment: .center,
       margin: .only(bottom: 2),
      width: size.width,
      height: size.height * .08,
      decoration: BoxDecoration(
        color: AppColors.cartBgColor,
        borderRadius: .circular(15),
      ),
      child: ListTile(
        leading: Icon(leading, color: AppColors.tabColor,),
        title: Text(title, style: DefaultStyle.defaultTextBoldStyle,),
        trailing: Icon(trailing, fontWeight: .bold, color: AppColors.tabColor,),
        onTap: action,
      ),
    );
  }
}