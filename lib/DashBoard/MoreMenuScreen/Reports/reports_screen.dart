import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/AgingDetailScreen/aging_detail_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/AgingSummaryScreen/aging_summary_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/CustomerBalanceSummaryScreen/customer_balance_summary_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/ExpensesByCategory/expenses_by_category.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/PaymentRecievedPDFScreen/payment_recieved_pdf_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/SalesByCustomer/sales_by_Customer.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/SalesByItems/sales_by_items.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/Reports/SalesBySalesPerson/sales_by_salesperson.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

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
          text: 'Reports',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),



      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),children: [
      Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(color: Get.theme.secondaryHeaderColor.withOpacity(0.2),width: 1)),child: Column(children: [
        ListTile(onTap: (){Get.to(SalesByCustomer());},shape: Border(bottom: BorderSide(width: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2))),minTileHeight: 24,tileColor: Get.theme.hintColor.withOpacity(0.2),
          title: Poppins(text: 'Sales by Customer',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
          trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
          ,),

        ListTile(onTap: (){Get.to(SalesByItems());},shape: Border(bottom: BorderSide(width: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2))),minTileHeight: 24,tileColor: Get.theme.hintColor.withOpacity(0.2),
          title: Poppins(text: 'Sales by Items',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
          trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
          ,),

        ListTile(onTap: (){Get.to(SalesBySalesperson());},shape: Border(bottom: BorderSide(width: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2))),minTileHeight: 24,tileColor: Get.theme.hintColor.withOpacity(0.2),
          title: Poppins(text: 'Sales by Salesperson',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
          trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
          ,),
      ],),),

SizedBox(height: 20,),


        Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(color: Get.theme.secondaryHeaderColor.withOpacity(0.2),width: 1)),child: Column(children: [
          ListTile(onTap: (){Get.to(CustomerBalanceSummaryScreen());},shape: Border(bottom: BorderSide(width: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2))),minTileHeight: 24,tileColor: Get.theme.hintColor.withOpacity(0.2),
            title: Poppins(text: 'Customer Balance Summary',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
            ,),

          ListTile(onTap: (){Get.to(AgingSummaryScreen());},shape: Border(bottom: BorderSide(width: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2))),minTileHeight: 24,tileColor: Get.theme.hintColor.withOpacity(0.2),
            title: Poppins(text: 'AR Aging  Summary',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
            ,),

          ListTile(onTap: (){Get.to(AgingDetailScreen());},shape: Border(bottom: BorderSide(width: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2))),minTileHeight: 24,tileColor: Get.theme.hintColor.withOpacity(0.2),
            title: Poppins(text: 'AR Ageing Details',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
            ,),
          ListTile(onTap: (){Get.to(PaymentRecievedPdfScreen());},shape: Border(bottom: BorderSide(width: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2))),minTileHeight: 24,tileColor: Get.theme.hintColor.withOpacity(0.2),
            title: Poppins(text: 'Payment Received',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
            ,),





        ],),),
SizedBox(height: 20,),

    Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(color: Get.theme.secondaryHeaderColor.withOpacity(0.2),width: 1)),child:ListTile(onTap: (){Get.to(ExpensesByCategory());},shape: Border(bottom: BorderSide(width: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.2))),minTileHeight: 24,tileColor: Get.theme.hintColor.withOpacity(0.2),
          title: Poppins(text: 'Expenses by Category',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
          trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
          ,),
    )],),
    );
  }
}
