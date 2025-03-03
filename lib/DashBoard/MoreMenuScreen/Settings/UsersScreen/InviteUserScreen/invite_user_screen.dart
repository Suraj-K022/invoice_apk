import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/utils/images.dart';

class InviteUserScreen extends StatelessWidget {
  const InviteUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(20),
      child: CustomButton(child: Poppins(text: 'Save',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,), onPressed: (){Get.back(canPop: true);}),
    ),
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: (){Get.back();},
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Invite User',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.all(20),
      children: [
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),color: Get.theme.primaryColor.withOpacity(0.1)),padding: EdgeInsets.all(10),child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,children: [
          Poppins(text: 'Name',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Enter Name'),
          SizedBox(height: 20,),
          Poppins(text: 'Email',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Enter Email ID'),
          SizedBox(height: 20,),
          Poppins(text: 'Role',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 8,),
          CustomDropdownField(hintText: 'Admin', items: [
            'Admin','Staff','Staff(Assigned Customer Only)'
          ]),

        ],),)
      ],),
    );
  }
}
