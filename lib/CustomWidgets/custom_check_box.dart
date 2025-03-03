import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCheckBox extends StatefulWidget {
  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false; // Initial state of the checkbox

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked; // Toggle the checkbox state
        });
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Get.theme.scaffoldBackgroundColor, // Red if checked, white if unchecked
          border: Border.all(
            color: isChecked ? Get.theme.primaryColor : Colors.grey.shade400, // Border always white
            width: 2,
          ),
          borderRadius: BorderRadius.circular(2), // Rounded corners
        ),
        child: isChecked
            ? Icon(
          Icons.check,
          color: Get.theme.primaryColor,
          size: 16, // Icon size
        )
            : null, // No icon when unchecked
      ),
    );
  }
}
