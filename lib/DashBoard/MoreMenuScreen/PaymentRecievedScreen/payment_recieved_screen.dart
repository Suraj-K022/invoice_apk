import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/AddPaymentScreen/add_payment_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/customer_detail_screens.dart';
import 'package:invoice/utils/images.dart';

class PaymentRecievedScreen extends StatelessWidget {
  const PaymentRecievedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(onTap: (){Get.to(AddPaymentScreen());},child: Image.asset(Images.pluscircle,height: 50,width: 50,color: Get.theme.primaryColor,)),
      
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: (){Get.back();},
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Payments Received',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),


      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),children: [
        CustomTextField(hintText: 'Search Items',prefixIcon: Icons.search_outlined,),
        SizedBox(height: 20,),
        PaymentWidget(name: 'Mr. Aakash Joshi',amount:  600,method: 'Cash',),
        PaymentWidget(name: 'Mr. Pratham Goswami',amount:  1700,method: 'UPI',),
        PaymentWidget(name: 'Mr. Pratham Goswami',amount:  100,method: 'Credit Card',),
        PaymentWidget(name: 'Mr. Pratham Goswami',amount:  1700,method: 'UPI',),

      ],),
    );
  }
}




class PaymentWidget extends StatelessWidget {
  final String name;
  final double amount;
  final String method;
  const PaymentWidget({super.key, required this.name, required this.amount, required this.method});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){Get.to(CustomerDetailScreens(customername: name, amount: amount,));},
      child: Container(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Get.theme.hintColor.withOpacity(0.2),width: 1))),
        padding: EdgeInsets.symmetric(vertical: 14),
        child: Row(
          children: [
            Expanded(flex: 1,child: CircleAvatar(radius: 22,backgroundColor: Get.theme.primaryColor,)),
            Expanded(flex: 4,child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Poppins(text: name,fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.canvasColor,),
                    Poppins(text:'₹ ${amount.toString()}0',fontWeight: FontWeight.w600,fontSize: 14,color: Get.theme.canvasColor,textAlign:TextAlign.right,),
      
                  ],
                ),
                Poppins(text: '10/12/2024',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                Poppins(text: method,fontWeight: FontWeight.w600,fontSize: 14,color: Colors.green),
      
            ],)),
          ],
        ),
      
      ),
    );
  }
}
