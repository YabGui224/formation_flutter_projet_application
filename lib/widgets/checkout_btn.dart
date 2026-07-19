import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';

class CheckoutBtn extends StatelessWidget {

  
  final String title;
  final IconData icon;
  final VoidCallback action;
  final Color textColor;
  final Color bgColor;
  final bool withBorder;
  final Color iconColor;

  const CheckoutBtn({super.key, required this.title,
  required this.icon, required this.action, 
  required this.textColor, required this.bgColor,this.withBorder = false, this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: action,
      child: Container(
        height: size.height * .06,
        decoration: BoxDecoration(
          color: bgColor,
          border: withBorder ?
            BoxBorder.all(
              width: 2,
              color: Colors.white.withAlpha(100)
            ):
             BoxBorder.all(
              width: 0,
            ),
          borderRadius: .circular(15)
        ),
        child: Row(
          spacing: 10,
          mainAxisAlignment: .center,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: .w800,color: textColor),),
            Icon(icon,color: iconColor),

          ],
        ),
      ),
    );
  }
}