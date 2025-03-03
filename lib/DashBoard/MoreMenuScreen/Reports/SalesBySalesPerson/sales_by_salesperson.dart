import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/CopyOfSales/copy_of_sales_screen.dart';
import 'package:invoice/utils/images.dart';

class SalesBySalesperson extends StatelessWidget {
  const SalesBySalesperson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        actions: [
          InkWell(onTap: (){Get.to(CopyOfSalesScreen(appbarTitle: 'Sales by Salesperson PDF',));},child: Image.asset(Images.w1,height: 24,width: 24,)),

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
          text: 'Sales By Salesperson',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Poppins(text: 'Mayur Infotech Pvt Ltd',fontWeight: FontWeight.w600,fontSize: 20,color: Get.theme.canvasColor,textAlign: TextAlign.center,),
          Poppins(text: 'Sales by Salesperson',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,textAlign: TextAlign.center,),
          Poppins(text: 'From 01/12/2024 To 31/12/2024',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Container(color: Get.theme.hintColor.withOpacity(0.2),padding:EdgeInsets.symmetric(horizontal: 10,vertical: 6) ,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Poppins(text: 'Name',color: Get.theme.canvasColor,fontSize: 14,fontWeight: FontWeight.w500,),
            Poppins(text: 'Count',color: Get.theme.canvasColor,fontSize: 14,fontWeight: FontWeight.w500,),
            Poppins(text: 'Sales',color: Get.theme.canvasColor,fontSize: 14,fontWeight: FontWeight.w500,),
          ],),),
          SizedBox(height: 100,),




Padding(
  padding: const EdgeInsets.symmetric(horizontal: 50),
  child: Poppins(text: 'There are no transaction during the selected date range',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.hintColor,maxLines: 3,textAlign: TextAlign.center,),
)

        ],
      ),
    );
  }
}
