import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice/AuthScreens/FormScreen/form_screen.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:invoice/BottomNavBar/bottom_nav_bar.dart';
import 'package:invoice/onboardScreen/onboard_screen.dart';

import '../../CustomWidgets/Custom_input_text_field.dart';
import '../../CustomWidgets/custom_buttons.dart';
import '../../CustomWidgets/customtext.dart';
import '../../utils/images.dart';
import '../SignUpScreen/signup_screen.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String screen;
  const OtpVerificationScreen({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                height: Get.height * 0.4, // Responsive height
              ),
              Image.asset(Images.bglayer, width: Get.width, fit: BoxFit.cover),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(Images.smalllogo, height: 90),
                  SizedBox(height: Get.height * 0.02),
                  Text(
                    'INVOICE',
                    style: GoogleFonts.prostoOne(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Get.theme.scaffoldBackgroundColor,
                    ),
                  ),
                  SizedBox(height: Get.height * 0.04),
                  Poppins(
                    text: 'Enter Verification Code',
                    fontSize: 20,
                    color: Get.theme.scaffoldBackgroundColor,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: Get.height * 0.015),
                  Poppins(
                    text: 'We’ll send a code to +917999995151',
                    fontSize: 16,
                    color: Get.theme.scaffoldBackgroundColor,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.05),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                OtpTextField(keyboardType: TextInputType.number,

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  styles: [
                    GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
                    GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
                    GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
                    GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
                    GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
                    GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
                  ],
                  fieldWidth: 50,
                  numberOfFields: 6,
                  borderColor: Colors.grey,
                  enabledBorderColor: Colors.grey.shade400,
                  focusedBorderColor: Get.theme.primaryColor,
                  borderWidth: 1,


                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },

                ),
                SizedBox(height: 40,),

                CustomButton(
                  child: Poppins(
                    text: 'Submit OTP',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.scaffoldBackgroundColor,
                  ),
                  onPressed: () {
                    Get.off(screen=='SignUp'?FormScreen():screen=='SignIn'?BottomNavBar(index: 0):SizedBox());
                  },
                ),
                SizedBox(height: Get.height * 0.04),
                Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Poppins(text: 'Didn’t get the OTP? ',color: Get.theme.hintColor,fontSize: 14,fontWeight: FontWeight.w400,),
                    Poppins(text: ' Resend',color: Get.theme.primaryColor,fontSize: 14,fontWeight: FontWeight.w600,),
                  ],
                ),
                Align(alignment: Alignment.center,child: Poppins(text: ' Expires in 01:00',color: Get.theme.hintColor,fontSize: 14,fontWeight: FontWeight.w400,)),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
