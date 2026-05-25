import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';

class CheckoutBtn extends StatelessWidget {
  const CheckoutBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: size.height * .06,
        decoration: BoxDecoration(
          color: AppColors.tabColor,
          borderRadius: .circular(15)
        ),
        child: Row(
          spacing: 10,
          mainAxisAlignment: .center,
          children: [
            Text("Checkout", style: TextStyle(fontSize: 18, fontWeight: .w800),),
            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}