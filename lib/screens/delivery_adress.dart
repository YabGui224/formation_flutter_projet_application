import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';

class DeliveryAdress extends StatelessWidget {
  const DeliveryAdress({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.primary,

      appBar: AppBar(
        centerTitle: true,
        title: Text("Delivery info",style: DefaultStyle.defaultTextBoldStyle,),
        backgroundColor: AppColors.primary,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,color: AppColors.secondary,fontWeight: .bold,)
        ),
      ),
      body: Center(
        child: Text("Delivery Info"),
      ),
    );

  }
}