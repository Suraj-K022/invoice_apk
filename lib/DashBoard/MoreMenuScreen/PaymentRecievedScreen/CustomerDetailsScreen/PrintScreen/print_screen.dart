import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/custom_switch.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/utils/images.dart';

class PrintScreen extends StatefulWidget {
  final String PrintScreenName;
  const PrintScreen({super.key, required this.PrintScreenName});

  @override
  State<PrintScreen> createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  bool isFlipped = false; // Track state of switch
  @override

  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(child: Poppins(text: 'Print',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,), onPressed: (){}),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: () => Get.back()
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: widget.PrintScreenName,
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),children: [
  Poppins(text: 'Printer',fontSize: 16,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,),
  SizedBox(height: 8,),
  CustomTextField(hintText: 'Select Printer',suffixIcon: Icons.arrow_forward_ios,),
  SizedBox(height: 20,),
  Poppins(text: 'Copies',fontSize: 16,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,),
  SizedBox(height: 8,),
  CustomTextField(hintText: 'Select Printer',),
  SizedBox(height: 20,),
  Poppins(text: 'Paper Size',fontSize: 16,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,),
  SizedBox(height: 8,),
  CustomDropdownField(hintText: 'Select Paper Size', items: [
    'A3','A4',
    'B5','JIS B5',
    'Legal','Letter',
    'Tabloid',
  ]),
  SizedBox(height: 20,),
  Poppins(text: 'Select Sheet',fontSize: 16,color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,),
  SizedBox(height: 8,),
  CustomDropdownField(hintText: 'Select Sheet', items: [
    '1','2',
    '3','4',
    '5','6',
    '7',
  ]),
  SizedBox(height: 20,),
  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [



      Poppins(text:
        isFlipped ? 'Flip Horizontally' : 'Flip Vertically',

          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Theme.of(context).secondaryHeaderColor, // Using ThemeData

      ),

      CustomSwitch(initialValue: isFlipped,
        inactiveCircleColor: Get.theme.scaffoldBackgroundColor,


        onChanged: (value) {
          setState(() {

            isFlipped = value;
          });
        },
      ),



  ],),
  SizedBox(height: 20,),
  Card(child:
  isFlipped?Image.asset(Images.vertical,fit: BoxFit.fitHeight,):
  Image.asset(Images.horizontal,fit: BoxFit.fitWidth),),
  SizedBox(height: 20,),


],),
    );
  }
}


