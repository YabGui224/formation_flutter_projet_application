import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';

class CartPriceWidget extends StatelessWidget {
  const CartPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      padding: .all(15),
      decoration: BoxDecoration(
        color: AppColors.cartBgColor,
        borderRadius: .circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text("Subtotal", style: DefaultStyle.defaultLessTextStyle,),
              const Spacer(),
              Text("\$555", style: DefaultStyle.defaultTextBoldStyle,),
            ],
          ),
          Row(
            children: [
              Text("Delivery Fee", style: DefaultStyle.defaultLessTextStyle,),
              const Spacer(),
              Text("\$555", style: DefaultStyle.defaultTextBoldStyle,),
            ],
          ),
          Row(
            children: [
              Text("Taxes", style: DefaultStyle.defaultLessTextStyle,),
              const Spacer(),
              Text("\$555", style: DefaultStyle.defaultTextBoldStyle,),
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text("Total", style: DefaultStyle.defaultLessTextStyle,),
              const Spacer(),
              Text("\$5520", style: DefaultStyle.cartItemPriceStyle,),
            ],
          ),
        ],
      ),
    );
  }
}