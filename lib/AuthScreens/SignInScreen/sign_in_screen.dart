import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice/AuthScreens/SignUpScreen/signup_screen.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/utils/images.dart';

import '../OTPVerificationScreen/otp_verification_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Row(spacing: 5,mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Poppins(text: 'Don’t have an account?',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.hintColor,),
            InkWell(onTap: (){Get.to(SignupScreen());},child: Poppins(text: 'Sign Up',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.primaryColor,)),
          ],
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
                    text: 'Hi, Welcome Back!',
                    fontSize: 20,
                    color: Get.theme.scaffoldBackgroundColor,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: Get.height * 0.015),
                  Poppins(
                    text: 'Sign in with your credentials',
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
                Poppins(
                  text: 'Email or mobile number',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: 'Email address or mobile number'),
                SizedBox(height: Get.height * 0.04),
                CustomButton(
                  child: Poppins(
                    text: 'Sign in',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.scaffoldBackgroundColor,
                  ),
                  onPressed: () {
                    Get.to(OtpVerificationScreen(screen: 'SignIn',));
                  },
                ),
                SizedBox(height: Get.height * 0.04),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 2, // Adjust thickness
                        width: double.infinity, // Full width
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [ Get.theme.primaryColor, Get.theme.scaffoldBackgroundColor],
                          ),
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Poppins(
                        text: 'Continue with',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Get.theme.hintColor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2, // Adjust thickness
                        width: double.infinity, // Full width
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [Get.theme.scaffoldBackgroundColor, Get.theme.primaryColor],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.04),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 16,
                  children: [
                    Container(decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Get.theme.primaryColor),padding: EdgeInsets.symmetric(horizontal: 37,vertical: 10,),child: Image.asset(Images.facebook,height: 24,width: 24,),),
                    Container(decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Colors.grey.shade300),padding: EdgeInsets.symmetric(horizontal: 37,vertical: 10,),child: Image.asset(Images.google,height: 24,width: 24,),),
                    Container(decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Get.theme.canvasColor),padding: EdgeInsets.symmetric(horizontal: 37,vertical: 10,),child: Image.asset(Images.apple,height: 24,width: 24,),),

                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
