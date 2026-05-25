import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';
import 'package:project_1/models/cart_model.dart';

class Cartitem extends StatelessWidget {
  final CartModel item;

  const Cartitem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      margin: .only(bottom: 7),
      padding: .all(15),
      width: size.width,
      height: size.height * .15,
      decoration: BoxDecoration(
        color: AppColors.cartBgColor,
        borderRadius: .circular(15),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: size.width * .15,
            child: Image.network(item.image,
            errorBuilder: (context, error, stackTrace) => CircleAvatar(
              child: Icon(Icons.shopping_bag_outlined),
            ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(item.title, style: DefaultStyle.defaultTextBoldStyle),
                Text(item.shortDescription, style: DefaultStyle.defaultLessTextStyle),
                Text("\$${item.price}", style: DefaultStyle.cartItemPriceStyle),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              customBtn(icon: Icons.add, action: () {print("add");}),
              Text("20", style: DefaultStyle.defaultTextBoldStyle),
              customBtn(icon:Icons.remove, action: (){print("remove");})
            ],
          ),
        ],
      ), 
    );
  }
  
  GestureDetector customBtn({required IconData icon, required VoidCallback action}) {
    return GestureDetector(
      onTap: action,
      child: Container(
        padding: .all(3),
        decoration: BoxDecoration(
          shape: .circle,
          border: BoxBorder.all(
            color: AppColors.tabColor.withAlpha(40),
            width: 1,
          ),
        ),
        child: Icon(icon, color: AppColors.secondary),
      ),
    );
  }
}