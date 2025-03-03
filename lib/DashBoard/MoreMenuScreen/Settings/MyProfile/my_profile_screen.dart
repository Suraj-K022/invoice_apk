import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/AuthScreens/SignInScreen/sign_in_screen.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/MyProfile/PrivacyPilicyScreen/privacy_policy_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/MyProfile/TermsAndServicesScreen/term_and_condition_screen.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

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
          text: 'My Profile',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [

          Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12),),color: Get.theme.primaryColor.withOpacity(0.2),),padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
              Container(height: 120,width: 120,decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(10))),child: Center(child: Poppins(text: 'MS',fontWeight: FontWeight.w600,fontSize: 60,color: Get.theme.scaffoldBackgroundColor,),),),
              SizedBox(height: 20,),

              Poppins(text: 'Mayur Soni',fontSize: 20,fontWeight: FontWeight.w600,color: Get.theme.canvasColor,),
              Poppins(text: 'mayursoni7929@gmail.com',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.hintColor,),
              Poppins(text: 'User ID : 50024527854',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.hintColor,),
              Poppins(text: 'Organisation ID : 50024527854',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.hintColor,),

            ],),),
SizedBox(height: 20,),

          ListTile(onTap: (){Get.to(TermAndConditionScreen());},minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Terms Of Services',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
          ),
          SizedBox(height: 10,),
          ListTile(onTap: (){Get.to(PrivacyPolicyScreen());},minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Privacy Policy',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
          ),SizedBox(height: 10,),
          ListTile(onTap: (){




            showDialog(context: context, builder: (context) {
              return
                AlertDialog(contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 24),backgroundColor: Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  title: Column(
                    children: [
                      CircleAvatar(backgroundColor: Get.theme.primaryColor.withOpacity(0.1),child: Icon(Icons.delete_outline,color: Get.theme.primaryColor,)),
                      SizedBox(height: 10,),
                      Poppins(text: 'Are you sure you want to delete the Mayurinfotech account',textAlign: TextAlign.center,fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,maxLines: 10,),
                    ],
                  ),
                  content: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,spacing: 20,
                    children: [
                      Expanded(child: InkWell(onTap: (){Get.back();},child: Container(height: 38,decoration: BoxDecoration(border: Border.all(color:Get.theme.primaryColor,width: 1),borderRadius: BorderRadius.circular(5),color: Get.theme.cardColor),child: Center(child: Poppins(text: 'Cancel',fontSize: 16,color: Get.theme.primaryColor,fontWeight: FontWeight.w500),),),)),

                      Expanded(child: InkWell(onTap: (){Get.offAll(SignInScreen());},child: Container(height: 38,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Get.theme.primaryColor),child: Center(child: Poppins(text: 'Delete',fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),),)),

                    ],
                  ),






                );

            },);



          },minTileHeight: 20,contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),tileColor: Get.theme.hintColor.withOpacity(0.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Poppins(text: 'Delete Account',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.canvasColor,),
          ),
        ],),

    );
  }
}
