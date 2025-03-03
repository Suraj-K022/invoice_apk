import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/CopyOfSales/copy_of_sales_screen.dart';
import 'package:invoice/utils/images.dart';

class CustomerBalanceSummaryScreen extends StatelessWidget {
  const CustomerBalanceSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(onTap: (){Get.to(CopyOfSalesScreen(appbarTitle: 'Customer Balance Summary',));},child: Image.asset(Images.w1,height: 24,width: 24,)),
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
          text: 'Customer Balance Summary',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Poppins(text: 'Mayur Infotech Pvt Ltd',fontWeight: FontWeight.w600,fontSize: 20,color: Get.theme.canvasColor,textAlign: TextAlign.center,),
          Poppins(text: 'Customer Balance Summary',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,textAlign: TextAlign.center,),
          Poppins(text: 'As of 11/12/2024',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Container(color: Get.theme.hintColor.withOpacity(0.2),padding:EdgeInsets.symmetric(horizontal: 10,vertical: 6) ,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Poppins(text: 'Customer Name',color: Get.theme.canvasColor,fontSize: 14,fontWeight: FontWeight.w500,),
            Poppins(text: 'Closing Balance(FCY)',color: Get.theme.canvasColor,fontSize: 14,fontWeight: FontWeight.w500,)
          ],),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Poppins(text: 'Mr. Aakash Joshi',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.canvasColor,),
              Poppins(text: '₹ 500.00Cr',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.canvasColor,)
            ],),
          ),
          Divider(height: 0,color: Get.theme.hintColor.withOpacity(0.2),thickness: 1,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Poppins(text: 'Mr. Piyush Soni',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.canvasColor,),
              Poppins(text: '₹ 833.00Cr',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.canvasColor,)
            ],),
          ),
          Divider(height: 0,color: Get.theme.hintColor.withOpacity(0.2),thickness: 1,),




          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Poppins(text: 'Mr. Pratham Goswami',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.canvasColor,),
              Poppins(text: '₹ 0.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.canvasColor,)
            ],),
          ),
          Divider(height: 0,color: Get.theme.hintColor.withOpacity(0.2),thickness: 1,),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Poppins(text: 'Mr. Aakash Jain',fontWeight: FontWeight.w700,fontSize: 14,color: Get.theme.canvasColor,),
              Poppins(text: '₹ 108.00Cr',fontWeight: FontWeight.w700,fontSize: 14,color: Get.theme.canvasColor,)
            ],),
          ),
          Divider(height: 0,color: Get.theme.hintColor.withOpacity(0.2),thickness: 1,),

        ],
      ),
    );
  }
}
