import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice/AuthScreens/SignInScreen/sign_in_screen.dart';
import '../utils/images.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate to OnboardScreen after 2 seconds
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Get.offAll(() => SignInScreen());
      });
    });

    return Scaffold(backgroundColor: Get.theme.primaryColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,spacing: 20,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 208,
              width: 216,
              child: Image.asset(Images.logo,),
            ),
            Text('INVOICE',style: GoogleFonts.prostoOne(fontSize: 20,fontWeight: FontWeight.w400,color: Get.theme.scaffoldBackgroundColor),)
          ],
        ),
      ),
    );
  }
}
