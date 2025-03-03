import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/utils/images.dart';

class UsageStatesScreen extends StatelessWidget {
  const UsageStatesScreen({super.key});

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
          text: 'Usage States',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.all(20),children: [
        Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),color: Get.theme.primaryColor.withOpacity(0.1)),child: Column(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Poppins(text: 'Invoices',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.canvasColor,),
                Poppins(text: '4/500',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.canvasColor,),
              ],
            ),
            SizedBox(height: 10,),
            LinearProgressIndicator(backgroundColor: Get.theme.hintColor,minHeight: 12,borderRadius: BorderRadius.all(Radius.circular(20)),color: Get.theme.primaryColor,value: 40/500,),

            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Poppins(text: 'Users',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.canvasColor,),
                Poppins(text: '1/2',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.canvasColor,),
              ],
            ),
            SizedBox(height: 10,),
            LinearProgressIndicator(backgroundColor: Get.theme.hintColor,minHeight: 12,borderRadius: BorderRadius.all(Radius.circular(20)),color: Get.theme.primaryColor,value: 1/2,),

            SizedBox(height: 20,),



            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Poppins(text: 'Projects',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.canvasColor,),
                Poppins(text: '0/3',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.canvasColor,),
              ],
            ),
            SizedBox(height: 10,),
            LinearProgressIndicator(backgroundColor: Get.theme.hintColor,minHeight: 12,borderRadius: BorderRadius.all(Radius.circular(20)),color: Get.theme.primaryColor,value:0/3,),

            SizedBox(height: 20,),
          ],
        ),),
        SizedBox(height: 20,),
        Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),color: Get.theme.primaryColor.withOpacity(0.1)),child: Column(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1,child: Image.asset(Images.warning,height: 24,width: 24,)),
                Expanded(flex: 7,child: Poppins(text: 'Your annual Limits for invoices and projects will reset on 27/11/2025',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.hintColor,maxLines: 3,)),

              ],
            ),



          ],
        ),)
      ],),

    );
  }
}
