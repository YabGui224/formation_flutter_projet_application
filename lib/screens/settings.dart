import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';
import 'package:project_1/core/utils/default_style.dart';
import 'package:project_1/widgets/custom_icon_block.dart';
import 'package:project_1/widgets/custom_switch_widget.dart';
import 'package:project_1/widgets/settings_line_widget.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int? _groupValue;

  updateRadioGroupValue(int? value) {
    setState(() {
      _groupValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.primary,

      appBar: AppBar(
        centerTitle: true,
        title: Text("Settings",style: DefaultStyle.defaultTextBoldStyle,),
        backgroundColor: AppColors.primary,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,color: AppColors.secondary,fontWeight: .bold,)
        ),
      ),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("PREFERENCES", style: DefaultStyle.defaultTitleStyle.copyWith(color: Colors.green, fontSize: 16),),
          ),
          Card(
            elevation: 15,
            color: AppColors.cartBgColor,
            child: Column(
              children: [
                SettingsLineWidget(
                    leading: CustomIconBlock(icon: Icons.dark_mode_outlined,),
                    title: "Dark Mode",
                    subtitle: "Optmized for low light",
                    trailing: CustomSwitchWidget(),
                    action: () {}
                ),
                const Divider(color: Colors.black12,),
                SettingsLineWidget(
                    leading: CustomIconBlock(icon: Icons.notifications_active_outlined,),
                    title: "Notifications",
                    subtitle: "Order updates & promos",
                    trailing: CustomSwitchWidget(),
                    action: () {}
                ),
                const Divider(color: Colors.black12,),
                SettingsLineWidget(
                    leading: CustomIconBlock(icon: Icons.language_outlined,),
                    title: "Language",
                    isSubtitle: false,
                    trailing: languageTrailing(context),
                    action: () {

                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: AppColors.secondary,
                            title: Text("Choissisez une langue"),
                            content: Container(
                              height: MediaQuery.sizeOf(context).height * .2,
                              decoration: BoxDecoration(
                                // color: Colors.black
                              ),
                              child: Column(
                                children: [
                                  RadioGroup<int>(
                                      groupValue: _groupValue,
                                      onChanged: updateRadioGroupValue,
                                      child: Column(
                                        children: [
                                          RadioListTile(value: 0, title: Text("Francais"),),
                                          RadioListTile(value: 1, title: Text("Anglais"),),
                                        ],
                                      )
                                  )

                                ],
                              ),
                            ),
                          )
                      );
                    }
                )
              ],
            ),
          ),
        ],
      )
    );

  }

  //
  Widget languageTrailing(context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .21,
      child: Row(
        spacing: 5,
        children: [
          Text("English", style: DefaultStyle.defaultLessTextStyle.copyWith(color: Colors.green),),
          Icon(Icons.arrow_forward_ios_rounded, color: AppColors.secondary,)
        ],
      ),
    );
  }
}