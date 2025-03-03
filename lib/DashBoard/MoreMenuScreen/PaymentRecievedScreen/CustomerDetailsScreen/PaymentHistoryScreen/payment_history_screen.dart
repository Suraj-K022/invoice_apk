import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/custom_radio_button.dart';
import 'package:invoice/CustomWidgets/customtext.dart';

class PaymentHistoryScreen extends StatelessWidget {
  final double amount;
  const PaymentHistoryScreen({super.key, required this.amount});

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
          text: 'Payment History',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
        ListTile(horizontalTitleGap: 10,minLeadingWidth: 0,
          leading: CustomRadioButton(),
          title: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Poppins(text: 'About a minute ago',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.hintColor,),
              Poppins(text: 'Payment of  ₹ ${amount.toString()} received ',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
            ],
          ),
          trailing:
          Poppins(text: 'By Mayur soni',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.hintColor,),

        )
      ],),
    );
  }
}
