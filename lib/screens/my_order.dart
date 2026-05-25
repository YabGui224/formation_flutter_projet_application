import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';
import 'package:project_1/datas/cart_items.dart';
import 'package:project_1/models/cart_model.dart';
import 'package:project_1/widgets/cartItem.dart';
import 'package:project_1/widgets/cart_price_widget.dart';
import 'package:project_1/widgets/checkout_btn.dart';
import 'package:project_1/widgets/promo_widget.dart';

class MyOrder extends StatelessWidget {
  MyOrder({super.key});
  final List<CartModel> items = cartItems;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary ,
        title: Text("My Order", style: DefaultStyle.defaultTextBoldStyle,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 15,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  CartModel currentItem = items[index];
                  return Cartitem(item: currentItem);
                },
              )
            ),
            PromoWidget(),
            CartPriceWidget(),
            CheckoutBtn()
          ],
        ),
      ),
    );
  }
}