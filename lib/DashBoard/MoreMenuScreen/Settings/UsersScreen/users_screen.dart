import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/UsersScreen/InviteUserScreen/invite_user_screen.dart';
import 'package:invoice/utils/images.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        actions: [
          InkWell(onTap: (){Get.to(InviteUserScreen());},child: Image.asset(Images.pluscircle,height: 24,width: 24,))
          ,SizedBox(width: 20,)],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: (){Get.back();},
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Users',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(shrinkWrap: true,
        padding: EdgeInsets.all(20),
        children: [
          Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.1),borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Poppins(text: 'Mayur Soni',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.canvasColor,),
                    Poppins(text: 'Admin',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.canvasColor,),

                ],), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Poppins(text: 'mayursoni7929@gmail.com',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
                    Poppins(text: 'Active',fontSize: 12,fontWeight: FontWeight.w600,color: Colors.green,),




                ],),
              ],
            ),
          ),



          
        ],
      ),

    );
  }
}
