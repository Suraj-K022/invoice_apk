import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/OrganisationProfileScreen/organisation_profile_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/payment_recieved_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/reports_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/setting_screens.dart';
import 'package:invoice/utils/images.dart';

class MoreMenuScreen extends StatelessWidget {
  const MoreMenuScreen({super.key});

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
          text: 'More Menu',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body:ListView(padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(decoration: BoxDecoration(color: Get.theme.hintColor.withOpacity(0.1),borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ListTile(onTap: (){Get.to(OrganisationProfileScreen());},
              leading: CircleAvatar(radius: 16,backgroundColor:Get.theme.primaryColor,),
              title: Poppins(text: 'Organization Profile',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                trailing: Icon(Icons.arrow_forward_ios,color: Get.theme.secondaryHeaderColor,size: 24,)

            ),
          ),
          SizedBox(height: 10,),


          Container(decoration: BoxDecoration(color: Get.theme.hintColor.withOpacity(0.1),borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ListTile(onTap: (){Get.to(PaymentRecievedScreen());},
                title: Poppins(text: 'Payments Received',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                trailing: Icon(Icons.arrow_forward_ios,color: Get.theme.secondaryHeaderColor,size: 24,)
            ),
          ),



          SizedBox(height: 10,),


          Container(decoration: BoxDecoration(color: Get.theme.hintColor.withOpacity(0.1),borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ListTile(onTap: (){Get.to(ReportsScreen());},
                title: Poppins(text: 'Reports',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                trailing: Icon(Icons.arrow_forward_ios,color: Get.theme.secondaryHeaderColor,size: 24,)
            ),
          ),


          SizedBox(height: 10,),


          Container(decoration: BoxDecoration(color: Get.theme.hintColor.withOpacity(0.1),borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ListTile(onTap: (){Get.to(SettingScreens());},
                title: Poppins(text: 'Settings',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                trailing: Icon(Icons.arrow_forward_ios,color: Get.theme.secondaryHeaderColor,size: 24,)
            ),
          ),


          SizedBox(height: 10,),


          Container(decoration: BoxDecoration(color: Get.theme.hintColor.withOpacity(0.1),borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ListTile(
                title: Poppins(text: 'Help & Support',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                trailing: Icon(Icons.arrow_forward_ios,color: Get.theme.secondaryHeaderColor,size: 24,)
            ),
          ),

          

        ],
      )
    );
  }
}


