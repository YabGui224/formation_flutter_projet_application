import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      padding: .all(15),
      margin: .only(bottom: 8),
      height: size.height * .15,
      width: size.width,
      decoration: BoxDecoration(
        color: AppColors.cartBgColor,
        borderRadius: .circular(15)

      ),
      child: Row(
        children: [
          Container(
            height: size.height * .15,
            width: size.height * .15 ,
              decoration: BoxDecoration(
                shape: .circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/image_1.png",),
                  // fit: .cover,
                  
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  Text("jlkfjdflfjlkfdjfkldj", style: DefaultStyle.defaultTextBoldStyle,),
                  Row(
                    crossAxisAlignment: .start,
                    spacing: 4,
                    children: [
                      Icon(Icons.star_border_purple500, color: AppColors.tabColor,),
                      Text("4.8", style: DefaultStyle.defaultTextBoldStyle,),
                    ],
                  )
                ],
              ),
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.withAlpha(50),
              child: Icon(Icons.favorite_border, color: AppColors.tabColor,),
            )
        ],
      )
    );
  }
}