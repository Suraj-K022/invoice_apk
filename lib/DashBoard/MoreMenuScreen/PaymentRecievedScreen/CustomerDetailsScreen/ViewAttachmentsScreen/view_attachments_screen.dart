import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/utils/images.dart';

class ViewAttachmentsScreen extends StatelessWidget {
  final String appbartitle;
  const ViewAttachmentsScreen({super.key, required this.appbartitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(onTap: (){

            showMenu(surfaceTintColor: Get.theme.scaffoldBackgroundColor,
              context: context,
              position: RelativeRect.fromLTRB(100, 100, 0, 0), // Adjust the position as needed
              items: [
                PopupMenuItem(onTap: (){},child: Row(spacing: 10,children: [Image.asset(Images.w9,height: 24,width: 24,),Poppins(text: 'Take Photo',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                PopupMenuItem(onTap: (){},child: Row(spacing: 10,children: [Image.asset(Images.w10,height: 24,width: 24,),Poppins(text: 'Scan Document',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                PopupMenuItem(onTap: (){},child: Row(spacing: 10,children: [Image.asset(Images.w11,height: 24,width: 24,),Poppins(text: 'Upload File',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
              ],
            );


          },child: Image.asset(Images.pluscircle,height: 24,width: 24,)),
          SizedBox(width: 20,)],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: (){Get.back();},
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: appbartitle,
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          
          Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),color: Get.theme.secondaryHeaderColor.withOpacity(0.1)),
          child: Row(spacing: 10,
            children: [
              Image.asset(Images.attach,height: 40,width: 40,fit: BoxFit.cover,),
              Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: '2024-12-04  | 05:50:30 | +0000.jpg',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '2.02 M.B',fontWeight: FontWeight.w600,fontSize: 14,color: Get.theme.canvasColor,),


              ],),

            ],
          ),),
          SizedBox(height: 8,),
          Poppins(text: 'You can upload a maximum of 3 files, 5MB each',fontWeight: FontWeight.w400,fontSize: 12,color: Get.theme.secondaryHeaderColor,),

        ],
      ),

    );
  }
}
