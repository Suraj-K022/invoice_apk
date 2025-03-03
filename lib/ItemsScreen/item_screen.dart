
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:invoice/AuthScreens/SignInScreen/sign_in_screen.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/CustomerScreen/CustomerDetailScreen/customer_detail_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/AddPaymentScreen/add_payment_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/EmailInvoiceScreen/email_invoice_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/PaymentScreen/payment_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/PrintScreen/print_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/ViewAttachmentsScreen/view_attachments_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/ViewPDFScreen/view_pdf_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/customer_detail_screens.dart';
import 'package:invoice/DashBoard/NewExpenseScreen/new_expense_Screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/CreateCustomerScreen/create_customer_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectItemScreen/AddItemScreen/add_item_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectItemScreen/ItemInformationScreen/item_information_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/new_invoice_screen.dart';
import 'package:invoice/ExpensesScreen/LabourScreen/labour_screen.dart';
import 'package:invoice/InvoiceScreen/ShareInvoiceLinkScreen/share_invoice_link_screen.dart';
import 'package:invoice/utils/images.dart';

class ItemScreen extends StatefulWidget {
  ItemScreen({super.key});

  @override
  State< ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State< ItemScreen> {
  int  select=0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        actions: [
          InkWell(onTap: (){Get.to(AddItemScreen(status: false,));},child: Image.asset(Images.pluscircle,width: 24,height: 24,)),
          SizedBox(width: 10,),
          InkWell(onTap: (){},child: Image.asset(Images.qr
            ,width: 24,height: 24,)),SizedBox(width: 20,)
        ],

        automaticallyImplyLeading: false,
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Items ',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),


      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          CustomTextField(hintText: 'Search Items',prefixIcon: Icons.search,),
          SizedBox(height: 20,),
          Row(children: [
            Expanded(child:
            InkWell(onTap: (){setState(() {select=0;});},
              child: Column(spacing: 5,children: [
                Poppins(text: 'Active',fontWeight: FontWeight.w500,fontSize: 16,color: select==0?Get.theme.primaryColor:Get.theme.canvasColor,),
                select==0?Container(height: 2,color: Get.theme.primaryColor,):SizedBox()
              ],),
            )),
            Expanded(child:
            InkWell(onTap: (){setState(() {select=1;});},
              child: Column(spacing: 5,
                children: [
                  Poppins(text: 'Inactive',fontWeight: FontWeight.w500,fontSize: 16,color:select==1?Get.theme.primaryColor:Get.theme.canvasColor,),
                  select==1?Container(height: 2,color: Get.theme.primaryColor,):SizedBox()

                ],
              ),
            )),

          ],),


          SizedBox(height: 20,),


          select==0?
          //Active//
          Column(
            children: [
              InkWell(onTap: (){Get.to(AddItemScreen(status: true));},child: ItemWidget(name: 'Pasta', amount: 80)),
              InkWell(onTap: (){Get.to(AddItemScreen(status: true));},child: ItemWidget(name: 'Rice', amount:50),),
              InkWell(onTap: (){Get.to(AddItemScreen(status: true));},child: ItemWidget(name: 'Onion', amount: 39),),
              InkWell(onTap: (){Get.to(AddItemScreen(status: true));},child: ItemWidget(name: 'Cooking Oil', amount: 85),),
              InkWell(onTap: (){Get.to(AddItemScreen(status: true));},child: ItemWidget(name: 'Milk', amount:53),),
              InkWell(onTap: (){Get.to(AddItemScreen(status: true));},child: ItemWidget(name: 'Cheese', amount: 102),),
              InkWell(onTap: (){Get.to(AddItemScreen(status: true));},child: ItemWidget(name: 'Honey', amount: 40),),
              InkWell(onTap: (){Get.to(AddItemScreen(status: true));},child: ItemWidget(name: 'Sugar', amount:47),),
              InkWell(onTap: (){Get.to(AddItemScreen(status: true));},child:  ItemWidget(name: 'Banana', amount: 25),),


            ],

          ):
          select==1?
          //InActive//
          Column(
            children: [
              InkWell(onTap: (){Get.to(AddItemScreen(status: true,isempty: 'Yes',));},child: ItemWidget(name: 'Rice', amount:50)),

              InkWell(onTap: (){Get.to(AddItemScreen(status: true,isempty: 'Yes',));},child: ItemWidget(name: 'Sugar', amount:47)),
              InkWell(onTap: (){Get.to(AddItemScreen(status: true,isempty: 'Yes',));},child: ItemWidget(name: 'Banana', amount: 25)),




            ],
          ):
          SizedBox()

        ],),
    );
  }
}




class ItemWidget extends StatelessWidget {

  final String name;
  final double amount;
  const ItemWidget({super.key, required this.name, required this.amount,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10),decoration: BoxDecoration(border: Border.all(width: 1,color: Get.theme.secondaryHeaderColor.withOpacity(0.1))),
        child:
        Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Poppins(text: name,fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
            Poppins(text:' ₹ ${amount.toString()}0',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),


          ],),
      ),
    );
  }
}
