import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: (){Get.back();},
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Privacy Policy',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.all(20),
        children: [
          Poppins(text: 'Privacy Policy',color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w600,),
          SizedBox(height: 20,),
          Poppins(text: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.hintColor,maxLines: 20,),SizedBox(height: 20,),
          Poppins(text: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.hintColor,maxLines: 20,)
        ],),

    );
  }
}
