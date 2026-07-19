import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';
import 'package:project_1/screens/delivery_adress.dart';
import 'package:project_1/screens/order_history.dart';
import 'package:project_1/screens/payement_method.dart';
import 'package:project_1/screens/personal_info.dart';
import 'package:project_1/screens/settings.dart';
import 'package:project_1/widgets/checkout_btn.dart';
import 'package:project_1/widgets/profile_line_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("Profile", style: DefaultStyle.defaultTextBoldStyle),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: AppColors.secondary),
          ),
        ],
        // leading: Icon(Icons.person, color: AppColors.secondary),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: .all(size.width * .05),
          child: Center(
            child: Column(
              spacing: 6,
              children: [
                Container(
                  padding: .all(5),
                  width: size.width * .4,
                  height: size.width * .4,
                  decoration: BoxDecoration(
                    shape: .circle,
                    border: BoxBorder.all(
                      color: Colors.white.withAlpha(100),
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/image_1.png"),
                      fit: .cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Guilavogui Yaboigui",
                  style: DefaultStyle.defaultTextBoldStyle,
                ),
                Text(
                  "yab224@gmail.com",
                  style: DefaultStyle.defaultLessTextStyle,
                ),
                Container(
                  alignment: .center,
                  padding: .all(5),
                  width: size.width * .4,
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withAlpha(60),
                    borderRadius: .circular(30),
                  ),
                  child: Text(
                    "Member",
                    style: DefaultStyle.defaultLessTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
                ProfileLineWidget(
                  leading: Icons.person,
                  title: "Personal Information",
                  trailing: Icons.arrow_forward_ios,
                  action: () {
                    final route = MaterialPageRoute(
                      builder: (context) => PersonalInfo(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ProfileLineWidget(
                  leading: Icons.location_on_outlined,
                  title: "Delivery Adress",
                  trailing: Icons.arrow_forward_ios,
                  action: () {
                    final route = MaterialPageRoute(
                      builder: (context) => DeliveryAdress(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ProfileLineWidget(
                  leading: Icons.wallet,
                  title: "Payement Methods",
                  trailing: Icons.arrow_forward_ios,
                  action: () {
                    final route = MaterialPageRoute(
                      builder: (context) => PayementMethods(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ProfileLineWidget(
                  leading: Icons.history,
                  title: "Order History",
                  trailing: Icons.arrow_forward_ios,
                  action: () {
                    final route = MaterialPageRoute(
                      builder: (context) => OrderHistory(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                ProfileLineWidget(
                  leading: Icons.settings,
                  title: "Settings",
                  trailing: Icons.arrow_forward_ios,
                  action: () {
                    final route = MaterialPageRoute(
                      builder: (context) => Settings(),
                    );
                    Navigator.push(context, route);
                  },
                ),
                const SizedBox(height: 25),
                CheckoutBtn(
                  action: () {},
                  iconColor: Colors.redAccent,
                  bgColor: AppColors.transparent,
                  icon: Icons.logout,
                  textColor: Colors.redAccent,
                  title: "Logout",
                  withBorder: true,
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
