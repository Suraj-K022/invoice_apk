import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/AddPaymentScreen/add_payment_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/EmailInvoiceScreen/email_invoice_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/PaymentHistoryScreen/payment_history_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/PaymentScreen/payment_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/PrintScreen/print_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/ViewAttachmentsScreen/view_attachments_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/ViewPDFScreen/view_pdf_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/new_invoice_screen.dart';
import 'package:invoice/InvoiceScreen/SendReminderScreen/SendReminderScreen.dart';
import 'package:invoice/utils/images.dart';

class CustomerDetailScreens extends StatefulWidget {
  final String customername;
  final double amount;
  final String? type;

  const CustomerDetailScreens({super.key, required this.customername, required this.amount,  this.type});

  @override
  State<CustomerDetailScreens> createState() => _CustomerDetailScreensState();
}

class _CustomerDetailScreensState extends State<CustomerDetailScreens> {
  int visible=0;
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
          text: 'Customer Details',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),children: [
        Container(padding: EdgeInsets.symmetric(vertical: 10),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.1),borderRadius: BorderRadius.all(Radius.circular(8))),child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
          Poppins(text: widget.customername,color: Get.theme.primaryColor,fontSize: 12,fontWeight: FontWeight.w500,),
          Poppins(text: '₹ ${widget.amount.toString()}0',color: Get.theme.secondaryHeaderColor,fontSize: 24,fontWeight: FontWeight.w600,),
        ],),),


        Container(margin: EdgeInsets.symmetric(vertical: 20),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(color: Get.theme.hintColor.withOpacity(0.2),width: 1)),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child:



          widget.type=='PAID'?Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Expanded(flex:1,
            child: Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.pen,height: 24,width: 24,),),
                Poppins(text: 'Edit',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,)
              ],
            ),
          ),

              Expanded(flex:1,
                child: InkWell(onTap: (){Get.to(ViewPdfScreen());},
                  child: Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.pdffile,height: 24,width: 24,),),
                      Poppins(text: 'View PDF',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,)
                    ],
                  ),
                ),
              ),
              Expanded(flex:1,
                child: visible==0?Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.aero,height: 24,width: 24,),),
                    Poppins(text: 'Email',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,)
                  ],
                ):visible==1?InkWell(onTap: (){Get.to(PaymentScreen());},
                  child: Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.money,height: 24,width: 24,),),
                      Poppins(text: 'Payment',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,)
                    ],
                  ),
                ):SizedBox(),
              ),
              Expanded(flex: 1,
                child:
                InkWell(
                  onTap: () {
                    showMenu(surfaceTintColor: Get.theme.scaffoldBackgroundColor,
                      context: context,
                      position: RelativeRect.fromLTRB(100, 100, 0, 0), // Adjust the position as needed
                      items: [
                        PopupMenuItem(onTap: (){Get.to(EmailInvoiceScreen());},child: Row(spacing: 10,children: [Image.asset(Images.w1,height: 24,width: 24,),Poppins(text: 'Email Invoice',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                        PopupMenuItem(onTap: (){Get.to(PrintScreen(PrintScreenName: 'Print PDF'));},child: Row(spacing: 10,children: [Image.asset(Images.w2,height: 24,width: 24,),Poppins(text: 'Print PDF',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                        PopupMenuItem(onTap: (){Get.to(ViewAttachmentsScreen(appbartitle: 'View Attachnments',));},child: Row(spacing: 10,children: [Image.asset(Images.w3,height: 24,width: 24,),Poppins(text: 'Add Attachments',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                        PopupMenuItem(onTap: (){Get.to(NewInvoiceScreen(appbartitle: 'Clone Invoice',));},child: Row(spacing: 10,children: [Image.asset(Images.w4,height: 24,width: 24,),Poppins(text: 'Clone',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                        PopupMenuItem(onTap: (){Get.to(PrintScreen(PrintScreenName: 'Print Delivery Note'));},child: Row(spacing: 10,children: [Image.asset(Images.w5,height: 24,width: 24,),Poppins(text: 'Print Delivery Note',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                        PopupMenuItem(onTap: (){Get.to(PrintScreen(PrintScreenName: 'Print Packing Slip'));},child: Row(spacing: 10,children: [Image.asset(Images.w6,height: 24,width: 24,),Poppins(text: 'Print Packing Slip',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                        PopupMenuItem(onTap: (){},child: Row(spacing: 10,children: [Image.asset(Images.w7,height: 24,width: 24,),Poppins(text: 'Share PDF',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                        PopupMenuItem(onTap: (){},child: Row(spacing: 10,children: [Image.asset(Images.w8,height: 24,width: 24,),Poppins(text: 'Delete',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                      ],
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: Get.theme.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Image.asset(Images.dots, height: 24, width: 24),
                      ),
                      Poppins(
                        text: 'More',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Get.theme.canvasColor,
                      ),
                    ],
                  ),
                )

              ),

        ],):
              widget.type=='OVERDUE'?Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex:1,
                    child: Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.pen,height: 24,width: 24,),),
                        Poppins(text: 'Edit',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,)
                      ],
                    ),
                  ),

                  Expanded(flex:1,
                    child: InkWell(onTap: (){Get.to(AddPaymentScreen());},
                      child: Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.money,height: 24,width: 24,),),
                          Poppins(text: 'Payment',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,)
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex:1,
                    child: InkWell(onTap: (){Get.to(SendReminderscreen());},
                      child: Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.clock,height: 24,width: 24,),),
                          Poppins(text: 'Send Reminder',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,maxLines: 2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 1,
                      child:
                      InkWell(
                        onTap: () {
                          showMenu(surfaceTintColor: Get.theme.scaffoldBackgroundColor,
                            context: context,
                            position: RelativeRect.fromLTRB(100, 100, 0, 0), // Adjust the position as needed
                            items: [
                              PopupMenuItem(onTap: (){Get.to(ViewPdfScreen());},child: Row(spacing: 10,children: [Image.asset(Images.w1,height: 24,width: 24,),Poppins(text: 'View PDF',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                              PopupMenuItem(onTap: (){Get.to(PrintScreen(PrintScreenName: 'Print PDF'));},child: Row(spacing: 10,children: [Image.asset(Images.w2,height: 24,width: 24,),Poppins(text: 'Print PDF',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                              PopupMenuItem(onTap: (){Get.to(EmailInvoiceScreen());},child: Row(spacing: 10,children: [Image.asset(Images.w3,height: 24,width: 24,),Poppins(text: 'Email Invoice',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                              PopupMenuItem(onTap: (){Get.to(ViewAttachmentsScreen(appbartitle: 'View Attachnments',));},child: Row(spacing: 10,children: [Image.asset(Images.w3,height: 24,width: 24,),Poppins(text: 'Add Attachments',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                              PopupMenuItem(onTap: (){},child: Row(spacing: 10,children: [Image.asset(Images.w7,height: 24,width: 24,),Poppins(text: 'Share PDF',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                              PopupMenuItem(onTap: (){Get.to(NewInvoiceScreen(appbartitle: 'Clone Invoice',));},child: Row(spacing: 10,children: [Image.asset(Images.w4,height: 24,width: 24,),Poppins(text: 'Clone',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                              PopupMenuItem(onTap: (){Get.to(PrintScreen(PrintScreenName: 'Print Delivery Note'));},child: Row(spacing: 10,children: [Image.asset(Images.w5,height: 24,width: 24,),Poppins(text: 'Print Delivery Note',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                              PopupMenuItem(onTap: (){Get.to(PrintScreen(PrintScreenName: 'Print Packing Slip'));},child: Row(spacing: 10,children: [Image.asset(Images.w6,height: 24,width: 24,),Poppins(text: 'Print Packing Slip',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                              PopupMenuItem(onTap: (){},child: Row(spacing: 10,children: [Image.asset(Images.w8,height: 24,width: 24,),Poppins(text: 'Delete',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
                            ],
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                color: Get.theme.primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Image.asset(Images.dots, height: 24, width: 24),
                            ),
                            Poppins(
                              text: 'More',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Get.theme.canvasColor,
                            ),
                          ],
                        ),
                      )

                  ),

                ],):SizedBox()






































          ,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),border: Border.all(color: Get.theme.hintColor.withOpacity(0.2),width: 1)),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 6,child: Column(spacing: 5,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: 'Invoice marked as send by Mayur soni',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,maxLines: 2,),
                  Poppins(text: '05/12/2024 |  11:30 AM',fontWeight: FontWeight.w500,fontSize: 10,color: Get.theme.hintColor,),
                ],
              )),
              Expanded(flex: 2,child: InkWell(onTap: (){Get.to(PaymentHistoryScreen(amount: widget.amount,));},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Get.theme.primaryColor),padding: EdgeInsets.symmetric(vertical: 6),child: Center(child: Poppins(text: 'View History',fontSize: 10,fontWeight: FontWeight.w600,color: Get.theme.scaffoldBackgroundColor,)),)))
            ],
          ),),
        SizedBox(height: 20,),

        visible==0?Column(
          children: [

            Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(border: Border.all(color: Get.theme.hintColor.withOpacity(0.2),width: 1)),
              child:
              Column(spacing: 5,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: Poppins(text: 'Payment Date',color: Get.theme.hintColor,fontSize: 14,)),
                      Expanded(child: Poppins(text: '08/12/2024',color: Get.theme.secondaryHeaderColor,fontSize: 14,)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Poppins(text: 'Reference Number',color: Get.theme.hintColor,fontSize: 14,)),
                      Expanded(child: Poppins(text: '---',color: Get.theme.secondaryHeaderColor,fontSize: 14,)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Poppins(text: 'Payment Mode',color: Get.theme.hintColor,fontSize: 14,)),
                      Expanded(child: Poppins(text: 'Cash',color: Get.theme.secondaryHeaderColor,fontSize: 14,)),
                    ],
                  ),


                  Divider(color: Get.theme.hintColor.withOpacity(0.2),height: 10,thickness: 1,),
                  Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Poppins(text: 'Over Payment',color: Get.theme.hintColor,fontSize: 14,),
                      Poppins(text: '₹ ${widget.amount.toString()}0',color: Get.theme.secondaryHeaderColor,fontSize: 14,),
                    ],
                  ),
                ],
              ),






            ),



            Container(margin: EdgeInsets.symmetric(vertical: 10),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                children: [
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8),),color: Get.theme.primaryColor),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    Poppins(text: 'Payment For',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,),
                    InkWell(onTap: (){setState(() {
                      visible=1;
                    });},child: Icon(Icons.arrow_forward_ios,color: Get.theme.scaffoldBackgroundColor,size: 24,))
                  ],),),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Poppins(text: 'INV-000002',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                            Poppins(text: '08/12/2024',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                          ],),
                        Divider(color: Get.theme.hintColor.withOpacity(0.2),thickness: 1,height: 10,),


                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Poppins(text: 'Invoice Amount',fontWeight: FontWeight.w600,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                            Poppins(text: '₹ ${widget.amount.toString()}0',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                          ],),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Poppins(text: 'Payment Amount',fontWeight: FontWeight.w600,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                            Poppins(text: '₹ ${widget.amount.toString()}0',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                          ],),

                      ],
                    ),
                  )
                ],
              ),),
          ],
        ):visible==1?PaidOverDueWidget(type: widget.type.toString(),)
            :SizedBox()

      ],),
    );
  }
}

class PaidOverDueWidget extends StatelessWidget {
  final String type;
  const PaidOverDueWidget({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),border: Border.all(color: Get.theme.hintColor.withOpacity(0.2),width: 1)),child:
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)),color: type=='PAID'?Colors.green.shade600:type=='OVERDUE'?Colors.red:null),child: Poppins(text: type,fontSize: 12,fontWeight: FontWeight.w600,color: Get.theme.scaffoldBackgroundColor,)),
                  Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      spacing: 20,
                      children: [
                        Poppins(text: 'Invoice #',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                        Poppins(text: 'INV-000002',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      spacing: 20,
                      children: [
                        Poppins(text: 'Invoice Date',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                        Poppins(text: '05/12/2024',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      spacing: 20,
                      children: [
                        Poppins(text: 'Due Date',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                        Poppins(text: '05/12/2024',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                      ],
                    ),
                  ],),
                ],
              ),
              Divider(color: Get.theme.hintColor.withOpacity(0.2),height: 20,thickness: 1,),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 20,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins(text: 'Almond',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                        Poppins(text: '1.0x660.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                      ],
                    ),
                    Poppins(text: '₹ 600.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                  ],
                ),


              ],),



              Divider(color: Get.theme.hintColor.withOpacity(0.2),height: 20,thickness: 1,),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 20,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins(text: 'No 1 Soap',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                        Poppins(text: '10.0x180.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                      ],
                    ),
                    Poppins(text: '₹ 1080.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                  ],
                ),


              ],),


              Divider(color: Get.theme.hintColor.withOpacity(0.2),height: 20,thickness: 1,),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 20,
                  children: [
                    Poppins(text: 'Sub Total ',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                    Poppins(text: ' ₹ 1,740.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 20,
                  children: [
                    Poppins(text: 'Total',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                    Poppins(text: '₹ 1,740.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 20,
                  children: [
                    Poppins(text: 'Payment Made ',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                    Poppins(text: ' ₹ 1,740.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                  ],
                ),
              ],),
              Divider(color: Get.theme.hintColor.withOpacity(0.2),height: 20,thickness: 1,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 20,
                children: [
                  Poppins(text: 'Balance Due',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                  Poppins(text: '₹0.00',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor,),
                ],
              ),




            ],
          ),






        ),
        SizedBox(height: 20,),
        Poppins(text: 'Sales Person',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),

        SizedBox(height: 8,),

        Container(padding: EdgeInsets.all(10),width: Get.width,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),border: Border.all(width: 1,color: Get.theme.hintColor.withOpacity(0.2))),child: Poppins(text: 'Mayur',color: Get.theme.hintColor,fontSize: 16,fontWeight: FontWeight.w400,),),
        SizedBox(height: 20,),
        Container(padding: EdgeInsets.all(10),width: Get.width,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),border: Border.all(width: 1,color: Get.theme.hintColor.withOpacity(0.2))),child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Poppins(text: 'Note : Thanks for your business',color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400,),
          ],
        ),),
        SizedBox(height: 20,),

      ],
    );
  }
}
