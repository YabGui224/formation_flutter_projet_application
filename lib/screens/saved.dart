import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';
import 'package:project_1/widgets/favorite_widget.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary ,
        title: ListTile(
          title: Text("Saved", style: DefaultStyle.defaultTextBoldStyle,),
          subtitle: Text("Your favorite meals", style: DefaultStyle.defaultLessTextStyle,),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          FavoriteWidget(),
        ],
      ),
    );
  }
}