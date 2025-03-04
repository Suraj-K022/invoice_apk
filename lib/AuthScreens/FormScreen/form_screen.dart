import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/onboardScreen/onboard_screen.dart';

import '../../CustomWidgets/Custom_input_text_field.dart';
import '../../CustomWidgets/custom_buttons.dart';
import '../../CustomWidgets/customtext.dart';
import '../../utils/images.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(
          child: Poppins(
            text: 'Save Organization Details',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Get.theme.scaffoldBackgroundColor,
          ),
          onPressed: () {
            Get.to(OnboardScreen());
          },
        ),
      ),

      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Get.theme.primaryColor,
                ),
                height: Get.height * 0.2, // Responsive height
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(flex: 3,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Poppins(text: 'Get Started',fontWeight: FontWeight.w600,fontSize: 24,color: Get.theme.scaffoldBackgroundColor,),
                          Poppins(text: 'with Bellway Invoice. Add your Organization information yo continue',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.scaffoldBackgroundColor,maxLines: 2,),
                        ],
                      ),
                    ),
                    Expanded(flex: 1,child: Image.asset(Images.cartoon,fit: BoxFit.cover,)),

                ],),
              )


            ],
          ),
          SizedBox(height: Get.height * 0.03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Poppins(
                  text: 'Organization Name',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: 'Enter Organization Name'),
                SizedBox(height: 20,),
                Poppins(
                  text: 'Organization GST Number',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: 'Enter Organization GST Number'),
                SizedBox(height: 20,),


                Row(spacing: 20,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins(
                          text: 'Country',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Get.theme.secondaryHeaderColor,
                        ),
                        SizedBox(height: 8),
                        CustomDropdownField(hintText: 'India',items: ['India','USA','UK'],),

                      ],
                    )),
                    Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins(
                          text: 'State',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Get.theme.secondaryHeaderColor,
                        ),
                        SizedBox(height: 8),
                        CustomDropdownField(hintText: 'M.P',items: ['Madhya Pradesh','Punjab','Uttar Pradesh','Chattisgarh'],),

                      ],

                    )),
                  ],
                ),
                SizedBox(height: 20,),


                Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins(
                          text: 'City',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Get.theme.secondaryHeaderColor,
                        ),
                        SizedBox(height: 8),
                        CustomDropdownField(hintText: 'Indore',items: ['Indore','Bhopal','Jabalpur',],),


                      ],
                    )),
                    Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins(
                          text: 'Postal Code',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Get.theme.secondaryHeaderColor,
                        ),
                        SizedBox(height: 8),
                        CustomTextField(hintText: 'Enter Code'),

                      ],

                    )),
                  ],
                ),
                SizedBox(height: 20,),


                Poppins(
                  text: 'Organization Address',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: 'Enter Organization Address',maxLines: 20,),
                SizedBox(height: 20,),



               
                SizedBox(height: Get.height * 0.04),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
