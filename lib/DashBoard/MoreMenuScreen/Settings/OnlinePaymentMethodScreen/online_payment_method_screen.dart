import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/utils/images.dart';

class OnlinePaymentMethodScreen extends StatelessWidget {
  const OnlinePaymentMethodScreen({super.key});

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
          text: 'Online Payment Method',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        Card(child: Image.asset(Images.razorpay)),
        SizedBox(height: 10,),
        Card(child: Image.asset(Images.paypal)),
        SizedBox(height: 10,),
        Card(child: Image.asset(Images.verifone)),
        SizedBox(height: 10,),
      ],),


    );
  }
}
