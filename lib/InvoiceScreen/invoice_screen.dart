import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:invoice/AuthScreens/SignInScreen/sign_in_screen.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/AddPaymentScreen/add_payment_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/EmailInvoiceScreen/email_invoice_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/PaymentScreen/payment_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/PrintScreen/print_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/ViewAttachmentsScreen/view_attachments_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/ViewPDFScreen/view_pdf_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/customer_detail_screens.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/new_invoice_screen.dart';
import 'package:invoice/InvoiceScreen/SendReminderScreen/SendReminderScreen.dart';
import 'package:invoice/InvoiceScreen/ShareInvoiceLinkScreen/share_invoice_link_screen.dart';
import 'package:invoice/utils/images.dart';

class InvoiceScreen extends StatefulWidget {
   InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  int  select=0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(


      floatingActionButton: InkWell(onTap: (){Get.to(NewInvoiceScreen(appbartitle: 'Create Invoice'));},child: Image.asset(Images.pluscircle,height: 50,width: 50,color: Get.theme.primaryColor,)),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Invoice ',
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
                Poppins(text: 'All',fontWeight: FontWeight.w500,fontSize: 16,color: select==0?Get.theme.primaryColor:Get.theme.canvasColor,),
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
                  Poppins(text: 'Draft',fontWeight: FontWeight.w500,fontSize: 16,color: select==3?Get.theme.primaryColor:Get.theme.canvasColor,),
                  select==3?Container(height: 2,color: Get.theme.primaryColor,):SizedBox()

                ],
              ),
            )),
          ],),


          SizedBox(height: 20,),


          select==0?
          //All//
          Column(
            children: [
              InkWell(onTap: (){Get.to(CustomerDetailScreens(customername: 'Mr. Piyush Sharma', amount: 500,type: 'OVERDUE',));},child: InvoiceWidget(name: 'Mr. Mayur Soni',amount: 1740,status: 'Overview by 2 days',)),
              InkWell(onTap: (){Get.to(CustomerDetailScreens(customername: 'Mr. Piyush Sharma', amount: 500,type: 'PAID',));},child: InvoiceWidget(name: 'Mr. Piyush Sharma',amount: 500,status: 'Paid',),)


            ],

          ):
          select==1?
              //Paid//
          Column(
            children: [
    InkWell(onTap: (){Get.to(CustomerDetailScreens(customername: 'Mr. Piyush Sharma', amount: 500,type: 'PAID',));},child: InvoiceWidget(name: 'Mr. Piyush Sharma',amount: 500,status: 'Paid',),),
      InkWell(onTap: (){Get.to(CustomerDetailScreens(customername: 'Mr. Piyush Sharma', amount: 500,type: 'PAID',));},child: InvoiceWidget(name: 'Mr. Mayur Sharma',amount: 500,status: 'Paid',),)

            ],
          ):
          select==2?
              //UnPaid//
          Column(

            children: [
    InkWell(onTap: (){Get.to(CustomerDetailScreens(customername: 'Mr. Piyush Sharma', amount: 500,type: 'OVERDUE',));},child: InvoiceWidget(name: 'Mr. Mayur Soni',amount: 1740,status: 'Overview by 2 days',),),
    InkWell(onTap: (){Get.to(CustomerDetailScreens(customername: 'Mr. Piyush Sharma', amount: 500,type: 'OVERDUE',));},child: InvoiceWidget(name: 'Mr. Mayur Soni',amount: 1740,status: 'Overview by 2 days',),),


            ],
          ):
          select==3?
              //Draft//
          Column(
            children: [
              SizedBox(height: 40,),
              Image.asset(Images.empty,height: 244,)
            ],


          ):
          SizedBox()

      ],),
    );
  }
}
class InvoiceWidget extends StatelessWidget {
  final double amount;
  final String name;
  final String status;
  const InvoiceWidget({super.key, required this.amount, required this.name, required this.status});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10),
        child:
      Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(flex: 1,child: Container(child: CircleAvatar(radius: 22,backgroundColor: Get.theme.primaryColor,),)),
        Expanded(flex: 5,child: Container(padding: EdgeInsets.only(left: 10),child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Poppins(text: name,fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,),
          Poppins(text: 'mayursoni4125@gmail.com',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.hintColor,),
          SizedBox(height: 6,),
          Poppins(text: status,fontSize: 14,fontWeight: FontWeight.w500,color:status=='Paid'?Colors.green:Colors.red,),
        ],),)),
        Expanded(flex: 2,child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.end,spacing: 10,
          children: [
           InkWell(
      
               onTap: () {
                 showMenu(surfaceTintColor: Get.theme.scaffoldBackgroundColor,
                   context: context,
                   position: RelativeRect.fromLTRB(100, 100, 0, 0), // Adjust the position as needed
                   items: [
                     PopupMenuItem(onTap: (){Get.to(PaymentScreen());},child: Row(spacing: 10,children: [Image.asset(Images.i1,height: 24,width: 24,),Poppins(text: 'Payments',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
      
                     if (status != 'Paid')PopupMenuItem(onTap: (){Get.to(NewInvoiceScreen(appbartitle: 'Edit Invoice'));},child: Row(spacing: 10,children: [Image.asset(Images.i3,height: 24,width: 24,),Poppins(text: 'Edit',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                     PopupMenuItem(onTap: (){Get.to(SendReminderscreen());},child: Row(spacing: 10,children: [Image.asset(Images.i2,height: 24,width: 24,),Poppins(text: 'Send Reminder',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                     PopupMenuItem(onTap: (){Get.to(ShareInvoiceLinkScreen());},child: Row(spacing: 10,children: [Image.asset(Images.i4,height: 24,width: 24,),Poppins(text: 'Share Invoice Link',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                     PopupMenuItem(onTap: (){Get.to(ViewPdfScreen());},child: Row(spacing: 10,children: [Image.asset(Images.i5,height: 24,width: 24,),Poppins(text: 'View PDF',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                     PopupMenuItem(onTap: (){Get.to(PrintScreen(PrintScreenName: 'Print PDF'));},child: Row(spacing: 10,children: [Image.asset(Images.i6,height: 24,width: 24,),Poppins(text: 'Print PDF',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                     PopupMenuItem(onTap: (){Get.to(EmailInvoiceScreen());},child: Row(spacing: 10,children: [Image.asset(Images.i7,height: 24,width: 24,),Poppins(text: 'Email',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                     PopupMenuItem(onTap: (){Get.to(NewInvoiceScreen(appbartitle: 'Clone Invoice'));},child: Row(spacing: 10,children: [Image.asset(Images.i8,height: 24,width: 24,),Poppins(text: 'Clone',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                     PopupMenuItem(onTap: (){
                       showDialog(context: context, builder: (context) {
                         return
                           AlertDialog(contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 24),backgroundColor: Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                             title: Column(
                               children: [
                                 CircleAvatar(backgroundColor: Get.theme.primaryColor.withOpacity(0.1),child: Icon(Icons.delete_outline,color: Get.theme.primaryColor,)),
                                 SizedBox(height: 10,),
                                 Poppins(text: 'Are you sure you want to delete this Invoice',textAlign: TextAlign.center,fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,maxLines: 10,),
                               ],
                             ),
                             content: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,spacing: 20,
                               children: [
                                 Expanded(child: InkWell(onTap: (){Get.back();},child: Container(height: 38,decoration: BoxDecoration(border: Border.all(color:Get.theme.primaryColor,width: 1),borderRadius: BorderRadius.circular(5),color: Get.theme.cardColor),child: Center(child: Poppins(text: 'Cancel',fontSize: 16,color: Get.theme.primaryColor,fontWeight: FontWeight.w500),),),)),
                                 Expanded(child: InkWell(onTap: (){Get.offAll(SignInScreen());},child: Container(height: 38,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Get.theme.primaryColor),child: Center(child: Poppins(text: 'Delete',fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),),)),
                               ],),);},);
      
      
                     },child: Row(spacing: 10,children: [Image.asset(Images.i9,height: 24,width: 24,),Poppins(text: 'Delete',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                   ],
                 );
               },
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
            child: Image.asset(Images.dotmenu,height: 24,width: 24,)),
            Poppins(text:'₹ ${amount.toString()}',fontWeight: FontWeight.w600,fontSize: 14,color: Get.theme.canvasColor,)
          ],
        )),
      ],),
      ),
    );
  }
}
