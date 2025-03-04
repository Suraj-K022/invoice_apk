import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice/AuthScreens/OTPVerificationScreen/otp_verification_screen.dart';
import 'package:invoice/AuthScreens/SignInScreen/sign_in_screen.dart';

import '../../CustomWidgets/Custom_input_text_field.dart';
import '../../CustomWidgets/custom_buttons.dart';
import '../../CustomWidgets/customtext.dart';
import '../../utils/images.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Row( spacing: 5,mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Poppins(text: 'Already have an account?',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.hintColor,),
            InkWell(onTap: (){Get.to(SignInScreen());},child: Poppins(text: 'Sign In',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.primaryColor,)),
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
                    text: 'Create Account',
                    fontSize: 20,
                    color: Get.theme.scaffoldBackgroundColor,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: Get.height * 0.015),
                  Poppins(
                    text: 'Register with Email or Phone Number',
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
                  text: 'Full Name',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: 'Enter your full name'),
                SizedBox(height: 20,),
                Poppins(
                  text: 'Mobile Number',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: 'Enter Mobile Number'),

                SizedBox(height: 20,),
                Poppins(
                  text: 'Email Address',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: 'Enter Email Address'),
                SizedBox(height: Get.height * 0.04),
                Text.rich(
                  TextSpan(
                    text: 'By signing up you accept the ',
                    style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: 'Terms of Service',
                        style: TextStyle(color: Get.theme.primaryColor,fontSize: 14,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,decorationColor: Get.theme.primaryColor),

                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Get.theme.primaryColor,fontSize: 14,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,decorationColor: Get.theme.primaryColor),

                      ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * 0.04),

                CustomButton(
                  child: Poppins(
                    text: 'Sign Up',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.scaffoldBackgroundColor,
                  ),
                  onPressed: () {
                    Get.to(OtpVerificationScreen(screen: 'SignUp',));
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
