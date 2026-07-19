import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';

class CustomIconBlock extends StatelessWidget {
  final IconData icon;
  const CustomIconBlock({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.black12,
      child: Icon(icon, color: AppColors.secondary,),
    );
  }
}
