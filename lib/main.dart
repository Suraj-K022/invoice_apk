import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/themedata/theme_data.dart';

import 'SplashScreen/splash_screen.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EcommerceApp',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // LoginScreen(),
    );
  }
}
