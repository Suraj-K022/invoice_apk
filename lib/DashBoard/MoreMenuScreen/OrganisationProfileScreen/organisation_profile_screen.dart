import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/BottomNavBar/bottom_nav_bar.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/payment_recieved_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/reports_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Settings/setting_screens.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/more_menu_screen.dart';
import 'package:invoice/utils/images.dart';

class OrganisationProfileScreen extends StatefulWidget {

  const OrganisationProfileScreen({super.key});

  @override
  State<OrganisationProfileScreen> createState() => _OrganisationProfileScreenState();
}

class _OrganisationProfileScreenState extends State<OrganisationProfileScreen> {



  final TextEditingController dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }
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
          text: 'Organization Profile',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(decoration: BoxDecoration(color: Get.theme.hintColor.withOpacity(0.1),borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ListTile(onTap: (){Get.to(OrganisationProfileScreen());},
                leading: CircleAvatar(radius: 16,backgroundColor:Get.theme.primaryColor,),
                title: Poppins(text: 'Upload your Logo',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                trailing: Image.asset(Images.fileupload,height: 24,width: 24,color: Get.theme.secondaryHeaderColor,)

            ),
          ),
          SizedBox(height: 10,),

          Container(margin: EdgeInsets.symmetric(vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Get.theme.primaryColor.withOpacity(0.1),),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),child: Column(mainAxisAlignment: MainAxisAlignment.start ,crossAxisAlignment: CrossAxisAlignment.start,children: [
Poppins(text: 'Organisation Name',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Enter Organisation Name'),
            SizedBox(height: 20,),



            Poppins(text: 'Organisation ID',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Enter Organisation Id',suffixIcon: Icons.copy,),
            SizedBox(height: 20,),




            Poppins(text: 'Email Address',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Enter Email Address',suffixIcon: Icons.copy,),
            SizedBox(height: 20,),




            Poppins(text: 'Business  Location',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
            CustomDropdownField(hintText: 'India', items: [
              'UK','India','US'
            ]),
            SizedBox(height: 20,),
          ],),),

          Poppins(text: 'Contact Information',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),

          Container(margin: EdgeInsets.symmetric(vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Get.theme.primaryColor.withOpacity(0.1),),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),child: Column(mainAxisAlignment: MainAxisAlignment.start ,crossAxisAlignment: CrossAxisAlignment.start,children: [
            Poppins(text: 'Address line 1',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Enter Address'),
            SizedBox(height: 20,),


Poppins(text: 'Address line 2',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Enter Address'),
            SizedBox(height: 20,),








            Poppins(text: 'State',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
         CustomDropdownField(hintText: 'M.P', items: [
           'Ujjain','Bhopal','Indore',
         ]),
            SizedBox(height: 20,),




          ],),),

          Poppins(text: 'Regional Information',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),


          Container(margin: EdgeInsets.symmetric(vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Get.theme.primaryColor.withOpacity(0.1),),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),child: Column(mainAxisAlignment: MainAxisAlignment.start ,crossAxisAlignment: CrossAxisAlignment.start,children: [
            Poppins(text: 'Fiscal Year started in',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Enter Fiscal Year started in'),
            SizedBox(height: 20,),


            Poppins(text: 'Language',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
            CustomDropdownField(hintText: 'English', items: [
              'Hindi','English','Marathi','Tamil','Gujarati',
            ]),
            SizedBox(height: 20,),









            Poppins(text: 'Date Format',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
            SizedBox(height: 8,),
            CustomTextField(
              hintText: 'dd/mm/yyyy',
              controller: dateController,
              readOnly: true,
              suffixIcon: Icons.date_range,
              onSuffixTap: () => _selectDate(context),
            ),
            SizedBox(height: 20,),

            CustomButton(child: Poppins(text: 'Save Organization Details',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.scaffoldBackgroundColor,), onPressed: (){
              Get.off(MoreMenuScreen());

            }),
            SizedBox(height: 20,),





          ],),),






        ],
      )
    );
  }
}
