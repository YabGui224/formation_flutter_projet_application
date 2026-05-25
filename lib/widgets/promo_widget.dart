import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width,
      height: size.height * .07,
      padding: .all(10),
      decoration: BoxDecoration(
        color: AppColors.transparent,
        borderRadius: .circular(40),
        border: BoxBorder.all(
          color: AppColors.tabColor.withAlpha(40),
          width: 1,
        ),
      ),
      child: Row(
        spacing: 10,
        children: [
          Icon(Icons.ac_unit_rounded, color: AppColors.secondary,),
          Expanded(
            child: TextField(
            style: DefaultStyle.defaultTextStyle,
            decoration: InputDecoration(
              
              border: InputBorder.none,
              hintText: "Add promo code"
            ),
            key: Key("promo"),
          ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              width: size.width * .2,
              height: size.height * .08,
              decoration: BoxDecoration(
                borderRadius: .circular(30),
                color: AppColors.secondary.withAlpha(80)
              ),
              alignment: .center,
              child: Text("Apply", style: DefaultStyle.defaultTextBoldStyle.copyWith(fontSize: 14),),
            ),
          )
        ],
      ),
      
    );
  }
}