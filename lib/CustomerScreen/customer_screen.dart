
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
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/CreateCustomerScreen/create_customer_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/new_invoice_screen.dart';
import 'package:invoice/InvoiceScreen/SendReminderScreen/SendReminderScreen.dart';
import 'package:invoice/InvoiceScreen/ShareInvoiceLinkScreen/share_invoice_link_screen.dart';
import 'package:invoice/utils/images.dart';

class CustomerScreen extends StatefulWidget {
  CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  int  select=0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(


      floatingActionButton: InkWell(onTap: (){Get.to(CreateCustomerScreen(appbarTitle: 'Create Customer',));},child: Image.asset(Images.pluscircle,height: 50,width: 50,color: Get.theme.primaryColor,)),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Customer ',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),

      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          CustomTextField(hintText: 'Search Name & Company',prefixIcon: Icons.search,),
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
                  Poppins(text: 'Paid',fontWeight: FontWeight.w500,fontSize: 16,color:select==1?Get.theme.primaryColor:Get.theme.canvasColor,),
                  select==1?Container(height: 2,color: Get.theme.primaryColor,):SizedBox()

                ],
              ),
            )),
            Expanded(child:
            InkWell(onTap: (){setState(() {select=2;});},
              child: Column(spacing: 5,
                children: [
                  Poppins(text: 'Unpaid',fontWeight: FontWeight.w500,fontSize: 16,color: select==2?Get.theme.primaryColor:Get.theme.canvasColor,),
                  select==2?Container(height: 2,color: Get.theme.primaryColor,):SizedBox()

                ],
              ),
            )),
            Expanded(child:
            InkWell(onTap: (){setState(() {select=3;});},
              child: Column(spacing: 5,
                children: [
                  Poppins(text: 'All',fontWeight: FontWeight.w500,fontSize: 16,color: select==3?Get.theme.primaryColor:Get.theme.canvasColor,),
                  select==3?Container(height: 2,color: Get.theme.primaryColor,):SizedBox()

                ],
              ),
            )),
          ],),


          SizedBox(height: 20,),


          select==0?
          //Active//
          Column(
            children: [
              CustomerWidget(name: 'Mr. Mayur Soni',status: 'Unpaid',),
              CustomerWidget(name: 'Mr. Piyush Sharma',status: 'Paid',),
              CustomerWidget(name: 'Mr. Aakash Joshi',status: 'Unpaid',),



            ],

          ):
          select==1?
          //Paid//
          Column(
            children: [
              CustomerWidget(name: 'Mr. Pratham Goswami',status: 'Paid',),
              CustomerWidget(name: 'Mr. Piyush Sharma',status: 'Paid',),


            ],
          ):
          select==2?
          //UnPaid//
          Column(

            children: [
              CustomerWidget(name: 'Mr. Mayur Soni',status: 'Unpaid',),
              CustomerWidget(name: 'Mr. Aakash Joshi',status: 'Unpaid',),



            ],
          ):
          select==3?
          //All//
          Column(
            children: [
              CustomerWidget(name: 'Mr. Mayur Soni',status: 'Unpaid',),
              CustomerWidget(name: 'Mr. Piyush Sharma',status: 'Paid',),
              CustomerWidget(name: 'Mr. Aakash Joshi',status: 'Unpaid',),

              CustomerWidget(name: 'Mr. Pratham Goswami',status: 'Paid',),
              CustomerWidget(name: 'Mr. Piyush Sharma',status: 'Paid',),
              CustomerWidget(name: 'Mr. Mayur Soni',status: 'Unpaid',),
              CustomerWidget(name: 'Mr. Aakash Joshi',status: 'Unpaid',),
            ],


          ):
          SizedBox()

        ],),
    );
  }
}
class CustomerWidget extends StatelessWidget {
  // final double amount;
  final String name;
  final String status;
  const CustomerWidget({super.key, required this.name, required this.status});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){Get.to(CustomerDetailScreen());},
      child: Container(
        padding: EdgeInsets.all(10),
        child:
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1,child: Container(child: CircleAvatar(radius: 22,backgroundColor: Get.theme.primaryColor,),)),
            Expanded(flex: 5,child:
            Container(padding: EdgeInsets.only(left: 10),child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Poppins(text: name,fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
              Poppins(text: 'mayursoni4125@gmail.com',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.hintColor,),
              SizedBox(height: 6,),
SizedBox(height: 6,),
              Row(spacing: 20,children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins(text: 'Receivables',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.canvasColor,),
                    Poppins(text: '₹ 0.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                  ],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins(text: 'Credits',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.canvasColor,),
                    Poppins(text: '₹ 500.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                  ],
                ),
              ],)


            ],),)),
            Expanded(flex: 2,child: Poppins(textAlign: TextAlign.end,text: status,fontSize: 14,fontWeight: FontWeight.w500,color: status=='Paid'?Colors.green:status=='Unpaid'?Colors.red:null))
           
          ],),
      ),
    );
  }
}
