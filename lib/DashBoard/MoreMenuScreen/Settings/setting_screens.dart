import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/AuthScreens/SignInScreen/sign_in_screen.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/OrganisationProfileScreen/organisation_profile_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/CurrencyScreen/currency_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/ImageUploadResumeScreen/upload_resume_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/MyProfile/my_profile_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/OnlinePaymentMethodScreen/online_payment_method_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/UsageStateScreen/usage_states_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/UsersScreen/users_screen.dart';

class SettingScreens extends StatelessWidget {
  const SettingScreens({super.key});

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
          text: 'Settings',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),

      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          ListTile(onTap: (){Get.to(MyProfileScreen());},contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
          leading: CircleAvatar(child: Center(child: Poppins(text: 'MS',color: Get.theme.scaffoldBackgroundColor,),),radius: 23,backgroundColor: Get.theme.primaryColor,),
            title: Poppins(text: 'Mayur Soni',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.canvasColor,),
            subtitle: Poppins(text: 'mayursoni7929@gmail.com',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
            ),
          SizedBox(height: 10,),
          ListTile(onTap: (){Get.to(OrganisationProfileScreen());},minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Organisation Profile',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
            ),
          SizedBox(height: 10,),
          ListTile(onTap: (){Get.to(UsageStatesScreen());},minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Usage States',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
            ),
          SizedBox(height: 10,),
          ListTile(onTap: (){Get.to(UsersScreen());},minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Users',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
          ),
          SizedBox(height: 10,),
          ListTile(onTap: (){Get.to(CurrencyScreen());},minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Currency',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
          ),
          SizedBox(height: 10,),
          ListTile(onTap: (){Get.to(OnlinePaymentMethodScreen());},minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Online Payment ',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
          ), SizedBox(height: 10,),
          ListTile(onTap: (){Get.to(UploadResumeScreen());},minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Image Upload Resume',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
          ),
          SizedBox(height: 10,),
          ListTile(onTap: (){



            showDialog(context: context, builder: (context) {
              return
                AlertDialog(contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 24),backgroundColor: Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  title: Column(
                    children: [
                      CircleAvatar(backgroundColor: Get.theme.primaryColor.withOpacity(0.1),child: Icon(Icons.account_circle_outlined,color: Get.theme.primaryColor,)),
                      SizedBox(height: 10,),
                      Poppins(text: 'Are you sure you want to Logout?',textAlign: TextAlign.center,fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,maxLines: 10,),
                    ],
                  ),
                  content: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,spacing: 20,
                    children: [
                      Expanded(child: InkWell(onTap: (){Get.back();},child: Container(height: 38,decoration: BoxDecoration(border: Border.all(color:Get.theme.primaryColor,width: 1),borderRadius: BorderRadius.circular(5),color: Get.theme.cardColor),child: Center(child: Poppins(text: 'No',fontSize: 16,color: Get.theme.primaryColor,fontWeight: FontWeight.w500),),),)),

                      Expanded(child: InkWell(onTap: (){Get.offAll(SignInScreen());},child: Container(height: 38,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Get.theme.primaryColor),child: Center(child: Poppins(text: 'Yes',fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),),)),

                    ],
                  ),






                );

            },);




          },minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Logout',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
          ),

        ],

      ),

    );
  }
}
