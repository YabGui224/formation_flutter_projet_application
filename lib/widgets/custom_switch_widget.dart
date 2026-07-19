import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatefulWidget {
  const CustomSwitchWidget({super.key});

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
  bool swithValue = false;
  @override
  Widget build(BuildContext context) {
    return  Switch(
        activeThumbColor: Colors.green,
        inactiveThumbColor: Colors.red,
        value: swithValue,
        onChanged: (newValue) {
          setState(() {
            swithValue = newValue;
          });
        }
    );
  }
}
