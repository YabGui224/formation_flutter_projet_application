import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';
import 'package:project_1/models/product_model.dart';
import 'package:project_1/widgets/empty_widget.dart';
import 'package:project_1/widgets/favorite_widget.dart';

class SavedScreen extends StatelessWidget {
  SavedScreen({super.key});
  final List<ProductModel> favoriteProduct = [];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: ListTile(
          title: Text("Saved", style: DefaultStyle.defaultTextBoldStyle),
          subtitle: Text(
            "Your favorite meals",
            style: DefaultStyle.defaultLessTextStyle,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: .all(size.width * .02),
        child: favoriteProduct.isEmpty
            ? EmptyWidget(
              title: "Empty favorite list",
              desc: "Aucun favoris pour l'instant",
              image: "assets/icons/empty_list.png",
            )
            : ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return FavoriteWidget();
                },
              ),
      ),
    );
  }
}
