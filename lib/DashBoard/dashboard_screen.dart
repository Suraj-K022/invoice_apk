import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/CustomWidgets/expense_widget.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/more_menu_screen.dart';
import 'package:invoice/DashBoard/NewExpenseScreen/new_expense_Screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/CreateCustomerScreen/create_customer_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectItemScreen/AddItemScreen/add_item_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/new_invoice_screen.dart';
import 'package:invoice/DashBoard/NotificationScreen/notification_screen.dart';
import 'package:invoice/utils/images.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int select=0;

  @override
  Widget build(BuildContext context) {


    // Ensure dialog shows only once after build completes
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   showDialog(
    //     context: context,
    //     builder: (context) => const PopUp(),
    //   );
    // });

    return  Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      body: ListView(shrinkWrap: true,
        children: [
          Container(padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.44, -1.0), // Approximate 263.03 degrees
                end: Alignment(1.0, 1.0),
                colors: [
                  Color(0xFFD3E2F6),
                  Color(0xFFFCD5C1),
                  Color(0xFFEED5E8),
                  Color(0xFFD3E2F6),
                ],
                stops: [0.0232, 0.3683, 0.5983, 1.0234], // Matching the given percentages
              ),
            ),
            child:Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(spacing: 12,
                    children: [
                      InkWell(onTap: (){Get.to(MoreMenuScreen());},child: Image.asset(Images.menu,height: 24,width: 24,)),
                        Poppins(text: 'Mayur Infotech',color: Get.theme.canvasColor,fontWeight: FontWeight.w600,fontSize: 16,),
                    ],
                  ),
                    InkWell(onTap: (){Get.to(BellScreen());},child: Image.asset(Images.bell,height: 24,width: 24,)),




                ],),
                SizedBox(height: 30,),
                Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(color: Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.all(Radius.circular(8))),child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 4,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Poppins(text: 'Total Invoice',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.canvasColor,),
                    Poppins(text: '25',fontWeight: FontWeight.w600,fontSize: 18,color: Get.theme.canvasColor,),
                    Poppins(text: 'Last 24 hrs',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.hintColor,),
                  ],),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                    Poppins(text: 'Paid Invoice',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.canvasColor,),
                    Poppins(text: '20',fontWeight: FontWeight.w600,fontSize: 18,color: Get.theme.canvasColor,),
                    Poppins(text: 'Last 30 days',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.hintColor,),
                  ],),
                  Column(spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Poppins(text: 'Pending Invoice',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.canvasColor,),
                    Poppins(text: '4',fontWeight: FontWeight.w600,fontSize: 18,color: Get.theme.canvasColor,),
                    Poppins(text: 'Last 30 days',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.hintColor,),
                  ],),
                ],),)
              ],



            ),
          ),
          SizedBox(height: 20,),



          Card(margin: EdgeInsets.symmetric(horizontal: 20),child: Container(padding: EdgeInsets.symmetric( horizontal: 10,vertical: 12),child: Row(spacing: 16,children: [
            Expanded(flex: 1,child: InkWell(onTap: (){Get.to(NewInvoiceScreen(appbartitle: 'Create Invoice',));},child: Column(spacing: 10,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(8),)),child: Image.asset(Images.ic1,height: 36,width: 36,),),Poppins(text: 'New Invoice',fontSize: 14,color: Get.theme.canvasColor,fontWeight: FontWeight.w500,textAlign: TextAlign.center,maxLines: 2,)],))),
            Expanded(flex: 1,child: InkWell(onTap: (){Get.to(CreateCustomerScreen(appbarTitle: 'Create Customer',));},child: Column(spacing: 10,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(8),)),child: Image.asset(Images.ic2,height: 36,width: 36,),),Poppins(text: 'New Customer',fontSize: 14,color: Get.theme.canvasColor,fontWeight: FontWeight.w500,textAlign: TextAlign.center,maxLines: 2,)],))),
            Expanded(flex: 1,child: InkWell(onTap: (){Get.to(AddItemScreen(status: false,));},child: Column(spacing: 10,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(8),)),child: Image.asset(Images.ic3,height: 36,width: 36,),),Poppins(text: 'New    Items',fontSize: 14,color: Get.theme.canvasColor,fontWeight: FontWeight.w500,textAlign: TextAlign.center,maxLines: 2,)],))),
            Expanded(flex: 1,child: InkWell(onTap: (){Get.to(NewExpenseScreen(appbarTitle: 'New Expenses',));},child: Column(spacing: 10,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(8),)),child: Image.asset(Images.ic4,height: 36,width: 36,),),Poppins(text: 'New Expense',fontSize: 14,color: Get.theme.canvasColor,fontWeight: FontWeight.w500,textAlign: TextAlign.center,maxLines: 2,)],))),
          ],),),elevation: 1,),




          SizedBox(height: 20,),



          Card(margin: EdgeInsets.symmetric(horizontal: 20),elevation: 1,child: Container(padding: EdgeInsets.symmetric( horizontal: 10,vertical: 12),child:
          Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(spacing: 12,
                children: [
                  Image.asset(Images.ClockCounter,height: 24,width: 24,),
                  Poppins(text: 'Recent History',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,)

                ],
              ),
              Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Get.theme.secondaryHeaderColor),child: Row(spacing: 4,children: [Poppins(text: 'View All',fontWeight: FontWeight.w600,fontSize: 12,color: Get.theme.scaffoldBackgroundColor,),Icon(Icons.arrow_forward,size: 16,color: Get.theme.scaffoldBackgroundColor,)],),)
            ],),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 8,children: [
              InkWell(onTap: (){setState(() {select=0;});},child: Container(decoration: BoxDecoration(color: select==0?Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(color: Get.theme.primaryColor,width: 1)),padding: EdgeInsets.symmetric(horizontal:10,vertical: 5 ),child: Poppins(text: 'Invoices',fontWeight: FontWeight.w500,fontSize: 16,color: select==0?Get.theme.scaffoldBackgroundColor:Get.theme.primaryColor,),)),
              InkWell(onTap: (){setState(() {select=1;});},child: Container(decoration: BoxDecoration(color: select==1?Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(color: Get.theme.primaryColor,width: 1)),padding: EdgeInsets.symmetric(horizontal:10,vertical: 5 ),child: Poppins(text: 'Expenses',fontWeight: FontWeight.w500,fontSize: 16,color: select==1?Get.theme.scaffoldBackgroundColor:Get.theme.primaryColor,),)),
              InkWell(onTap: (){setState(() {select=2;});},child: Container(decoration: BoxDecoration(color: select==2?Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(color: Get.theme.primaryColor,width: 1)),padding: EdgeInsets.symmetric(horizontal:10,vertical: 5 ),child: Poppins(text: 'Quotes',fontWeight: FontWeight.w500,fontSize: 16,color: select==2?Get.theme.scaffoldBackgroundColor:Get.theme.primaryColor,),)),
            ],),
            SizedBox(height: 20,),
            Card(margin: EdgeInsets.symmetric(horizontal: 10),elevation: 0,color: Get.theme.primaryColor.withOpacity(0.1),child:
            Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Column(spacing: 10,children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Poppins(text: 'Mr. Mayur Soni',color: Get.theme.canvasColor,fontSize: 16,fontWeight: FontWeight.w600,),
                  Poppins(text: '₹ 250.00',color: Get.theme.canvasColor,fontSize: 16,fontWeight: FontWeight.w600,),
                ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Poppins(text: '30/11/2024 - INV No. 000001',color: Get.theme.hintColor,fontSize: 12,fontWeight: FontWeight.w500,),
                  Poppins(text: 'Paid',color: Colors.green.shade500,fontSize: 12,fontWeight: FontWeight.w600,),
                ],),

              ],),
            ),),


          ],),),),





          SizedBox(height: 20,),



          Card(margin: EdgeInsets.symmetric(horizontal: 20),elevation: 1,child: Container(padding: EdgeInsets.symmetric( horizontal: 10,vertical: 12),
            child: IncomeExpensesWidget(),),),
          SizedBox(height: 16),





        ],
      ),

    );
  }
}

class PopUp extends StatelessWidget {
  const PopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,spacing: 10,
        children: [
          Icon(Icons.notifications_active,size: 24,color: Get.theme.primaryColor,),
          Poppins(text: 'Allow Bellway Invoice to send you notifications?',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.canvasColor,maxLines: 2,textAlign: TextAlign.center,),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 1,
                child: InkWell(onTap: (){Get.back();},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Get.theme.primaryColor,
                      ),
                      color: Get.theme.scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20,
                    ),
                    child: Center(
                      child: Poppins(
                        text: 'Don’t Allow',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Get.theme.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Proper spacing
              Expanded(flex: 1,
                child: InkWell(onTap: (){Get.back();},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Get.theme.primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20,
                    ),
                    child: Center(
                      child: Poppins(
                        text: 'Allow',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Get.theme.scaffoldBackgroundColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
