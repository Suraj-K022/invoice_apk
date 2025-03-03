import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/CopyOfSales/copy_of_sales_screen.dart';
import 'package:invoice/utils/images.dart';

class PaymentRecievedPdfScreen extends StatelessWidget {
  const PaymentRecievedPdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(onTap: (){Get.to(CopyOfSalesScreen(appbarTitle: 'Payment Received PDF',));},child: Image.asset(Images.w1,height: 24,width: 24,)),
          SizedBox(width: 20,)
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: Get.back,
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Payment Received',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Poppins(text: 'Mayur Infotech Pvt Ltd',fontWeight: FontWeight.w600,fontSize: 20,color: Get.theme.canvasColor,textAlign: TextAlign.center,),
          Poppins(text: 'Payment Received',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,textAlign: TextAlign.center,),
          Poppins(text: 'From 01/12/2024 To 31/12/2024',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          CustomPaymentRecievedWidget(method: 'Cash',name: 'Mr. Aakash Joshi',type: 'Amount-2',),
          CustomPaymentRecievedWidget(method: 'Credit Card',name: 'Mr. Pratham Goswami',type: 'Amount-3',),
          CustomPaymentRecievedWidget(method: 'UPI',name: 'Mr. Shyam Prajapat',type: 'Amount-1',),


        ],
      ),
    );
  }
}
class CustomPaymentRecievedWidget extends StatelessWidget {
  final String method;
  final String name;
  final String type;
  const CustomPaymentRecievedWidget({super.key, required this.method, required this.name, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1,color: Get.theme.hintColor.withOpacity(0.2)))),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),child:
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Poppins(text: name,fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.canvasColor,),
            Poppins(text: type,fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
            SizedBox(height: 8,),
            Container(padding: EdgeInsets.symmetric(horizontal: 10,),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(3))),child: Poppins(text: method,fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.scaffoldBackgroundColor,)),
          ],
        ),
        Column(
          children: [
            Poppins(text: '₹ 1,240.00',fontWeight: FontWeight.w600,fontSize: 14,color: Get.theme.canvasColor,),
            Poppins(text: '03/12/2024',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
          ],
        )
      ],

    ),);
  }
}
