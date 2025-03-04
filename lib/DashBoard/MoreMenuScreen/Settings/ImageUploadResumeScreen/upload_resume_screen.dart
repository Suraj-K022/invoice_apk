import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_radio_button.dart';
import 'package:invoice/CustomWidgets/customtext.dart';

class UploadResumeScreen extends StatefulWidget {
  const UploadResumeScreen({super.key});

  @override
  State<UploadResumeScreen> createState() => _UploadResumeScreenState();
}

class _UploadResumeScreenState extends State<UploadResumeScreen> {
  int? _selectedQuality; // Variable to track selected value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(child: Poppins(text: 'Save',color: Get.theme.scaffoldBackgroundColor,fontSize: 16,fontWeight: FontWeight.w500,), onPressed: (){Get.back(canPop: true);}),
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
          text: 'Image Upload Resume',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      children: [
       Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),border: Border.all(color: Get.theme.secondaryHeaderColor.withOpacity(0.2),width: 1),),child: Column(
         children: [
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
             Poppins(text: 'Quality 60%',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
             CustomRadioButton(
               value: 0,
               groupValue: _selectedQuality,
               onChanged: (int? newValue) {
                 setState(() {
                   _selectedQuality = newValue;
                 });
               },)
           ],),
           Divider(height: 20,thickness: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2),),
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
             Poppins(text: 'Quality 80%',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
             CustomRadioButton(  value: 1,
               groupValue: _selectedQuality,
               onChanged: (int? newValue) {
                 setState(() {
                   _selectedQuality = newValue;
                 });
               },)
           ],),
           Divider(height: 20,thickness: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2),),
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
             Poppins(text: 'Quality 100%',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
             CustomRadioButton(  value: 2,
               groupValue: _selectedQuality,
               onChanged: (int? newValue) {
                 setState(() {
                   _selectedQuality = newValue;
                 });
               },)
           ],),
           Divider(height: 20,thickness: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2),),
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
             Poppins(text: 'None',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
             CustomRadioButton(  value: 3,
               groupValue: _selectedQuality,
               onChanged: (int? newValue) {
                 setState(() {
                   _selectedQuality = newValue;
                 });
               },)
           ],),
         ],
       ),)
      ],),

    );
  }
}
