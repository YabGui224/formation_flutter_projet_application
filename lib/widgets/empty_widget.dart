import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';

class EmptyWidget extends StatelessWidget {
  final String title;
  final String desc;
  final String image;

  const EmptyWidget({super.key, required this.title, required this.desc, required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      padding: .symmetric(horizontal: size.width * .1, vertical: size.width * .15 ),
      decoration: BoxDecoration(
        borderRadius: .circular(20),
        color: AppColors.transparent,
        border: Border.all(
          width: .7,
          color: AppColors.tabColor
        )
      ),
      child: Column(
        mainAxisAlignment: .center,
        spacing: size.width * .02,
        children: [
          Text(title, style: DefaultStyle.defaultTextBoldStyle,),
          Text(desc, textAlign: .center, style: DefaultStyle.defaultLessTextStyle, ),
          Container(
            child: Image.asset(
              image,
              width: size.width * .4,
              height: size.width * .4,
              )
          )
        ],
      ),
    );
  }
}