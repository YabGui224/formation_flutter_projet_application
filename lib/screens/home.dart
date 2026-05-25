import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.secondary,
                    ),
                    Text(
                      "15 Water Street Fremont",
                      style: DefaultStyle.defaultTextStyle,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.favorite_border_outlined,
                      color: AppColors.secondary,
                    ),
                    Icon(
                      Icons.notifications_none_rounded,
                      color: AppColors.secondary,
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: .circular(30),
                      borderSide: .none,
                    ),
                    filled: true,
                    fillColor: Colors.grey.withAlpha(60),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.secondary.withAlpha(100),
                      size: 32,
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: AppColors.secondary.withAlpha(100),
                      size: 32,
                    ),

                    hintText: "Search..",
                    hintStyle: TextStyle(
                      color: AppColors.secondary,
                      fontWeight: .bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: size.height * 0.22,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: .horizontal,
                    children: [
                      customContainer(size),
                      const SizedBox(width: 10),
                      customContainer(size),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Your trusted picks",
                      style: DefaultStyle.defaultMdTitleStyle,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: AppColors.tabColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(spacing: 10, children: [topItem(size), topItem(size)]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack customContainer(Size size) {
    return Stack(
      children: [
        Container(
        padding: .all(15),
        height: size.height * 0.22,
        width: size.width * .9,
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: .circular(30),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "Get special discount",
                  style: DefaultStyle.defaultMdTitleStyle,
                ),
                Text(
                  "Design by Fluttertop",
                  style: DefaultStyle.defaultLessTextStyle,
                ),
                Text(
                  "up to 15%",
                  style: DefaultStyle.defaultTextBoldStyle.copyWith(fontSize: 36),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    spacing: 15,
                    children: [
                      Text("Order now", style: DefaultStyle.defaultTextStyle),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: AppColors.secondary,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Positioned(
        right: -100,
        top: -10,
        bottom: 0,
        // left: 150,
          child: Image.asset(
            "assets/images/image_1.png",
            width: size.width * .9,
            fit: .cover,
          ),
        ),
    ]
    );
  }

  Stack topItem(Size size) {
    return Stack(
      children: [
        Container(
          padding: .symmetric(horizontal: 10, vertical: 7),
          width: size.width * .45,
          height: size.height * .32,
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(15),
            borderRadius: .circular(15),
          ),
          child: Column(
            spacing: 7,
            children: [
              Expanded(child: Image.asset("assets/images/image_1.png")),
              Text("Brisket Pho", style: DefaultStyle.defaultMdTitleStyle),
              Row(
                mainAxisAlignment: .center,
                spacing: 5,
                children: [
                  Icon(Icons.timer_sharp, color: AppColors.secondary),
                  Text("15 min", style: DefaultStyle.defaultLessTextStyle),
                  Container(
                    width: 1,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(100),
                    ),
                  ),
                  Text("500 Kal", style: DefaultStyle.defaultLessTextStyle),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text("Brisket Pho", style: DefaultStyle.defaultMdTitleStyle),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: AppColors.secondary,
                      child: Icon(Icons.add, color: AppColors.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          top: 8,
          child: Row(
            children: [
              Icon(Icons.star, color: Colors.amber),
              Text("4.3", style: DefaultStyle.defaultTextBoldStyle),
            ],
          ),
        ),
      ],
    );
  }
}


