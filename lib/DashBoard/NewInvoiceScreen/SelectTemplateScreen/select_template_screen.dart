import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/utils/images.dart';

class SelectTemplateScreen extends StatefulWidget {
  final String? templateimg;

  const SelectTemplateScreen({super.key, this.templateimg});

  @override
  State<SelectTemplateScreen> createState() => _SelectTemplateScreenState();
}

class _SelectTemplateScreenState extends State<SelectTemplateScreen> {
  late String? selectedTemplate;
  int selectedIndex = 0;

  final List<String> templates = [
    Images.temp1,
    Images.temp2,
    Images.temp3,
    Images.temp4,
  ];

  @override
  void initState() {
    super.initState();
    selectedTemplate = widget.templateimg ?? templates[0];
    selectedIndex = templates.indexOf(selectedTemplate!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Get.theme.canvasColor, size: 24),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Select Template',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: templates.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  selectedTemplate = templates[index];
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedIndex == index ? Get.theme.primaryColor : Colors.transparent,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(templates[index]),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(
          child: Poppins(
            text: 'Apply Template',
            color: Get.theme.scaffoldBackgroundColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          onPressed: () {
            Get.back(result: selectedTemplate);
          },
        ),
      ),
    );
  }
}
