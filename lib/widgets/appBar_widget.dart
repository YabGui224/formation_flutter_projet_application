import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';

class AppbarWidget extends StatelessWidget {
  final String title;
  final String description;

  const AppbarWidget({super.key, required this.title, this.description = ''});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.primary ,
        title: ListTile(
          title: Text(title, style: DefaultStyle.defaultTextBoldStyle,),
          subtitle: Text(description, style: DefaultStyle.defaultLessTextStyle,),
        ),
        centerTitle: true,
      );
  }
}