
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
import 'package:invoice/DashBoard/NewInvoiceScreen/new_invoice_screen.dart';
import 'package:invoice/ExpensesScreen/LabourScreen/labour_screen.dart';
import 'package:invoice/InvoiceScreen/ShareInvoiceLinkScreen/share_invoice_link_screen.dart';
import 'package:invoice/utils/images.dart';

class ExpensesScreen extends StatefulWidget {
  ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  int  select=0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(


      floatingActionButton: InkWell(onTap: (){Get.to(NewExpenseScreen(appbarTitle: 'Add Expenses',));},child: Image.asset(Images.pluscircle,height: 50,width: 50,color: Get.theme.primaryColor,)),
      appBar: AppBar(
        actions: [InkWell(onTap: (){





          showMenu(surfaceTintColor: Get.theme.scaffoldBackgroundColor,
            context: context,
            position: RelativeRect.fromLTRB(100, 0, 0, 0), // Adjust the position as needed
            items: [
              PopupMenuItem(child: Poppins(text: 'A To Z',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,)),
              PopupMenuItem(child: Poppins(text: 'Z To A',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,)),
            ],
          );










        },child: Image.asset(Images.fltr,width: 24,height: 24,)),SizedBox(width: 20,)],

        automaticallyImplyLeading: false,
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Expenses ',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),


      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          CustomTextField(hintText: 'Search Expenses & Customer',prefixIcon: Icons.search,),
          SizedBox(height: 20,),
          Row(children: [
            Expanded(child:
            InkWell(onTap: (){setState(() {select=0;});},
              child: Column(spacing: 5,children: [
                Poppins(text: 'Billed',fontWeight: FontWeight.w500,fontSize: 16,color: select==0?Get.theme.primaryColor:Get.theme.canvasColor,),
                select==0?Container(height: 2,color: Get.theme.primaryColor,):SizedBox()
              ],),
            )),
            Expanded(child:
            InkWell(onTap: (){setState(() {select=1;});},
              child: Column(spacing: 5,
                children: [
                  Poppins(text: 'Unbilled',fontWeight: FontWeight.w500,fontSize: 16,color:select==1?Get.theme.primaryColor:Get.theme.canvasColor,),
                  select==1?Container(height: 2,color: Get.theme.primaryColor,):SizedBox()

                ],
              ),
            )),
            Expanded(child:
            InkWell(onTap: (){setState(() {select=2;});},
              child: Column(spacing: 5,
                children: [
                  Poppins(text: 'Invoiced',fontWeight: FontWeight.w500,fontSize: 16,color: select==2?Get.theme.primaryColor:Get.theme.canvasColor,),
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
          //Billed//
          Column(
            children: [
              ExpenseWidget(name: 'Mr. Piyush Sharma', type: 'Billable',),
              ExpenseWidget(name: 'Mr. Mohit Jaiswal', type: 'Billable',)



            ],

          ):
          select==1?
          //Unbilled//
          Column(
            children: [
              ExpenseWidget(name: 'Mr. Shyam Prajapat', type: 'Non-Billable',),
              ExpenseWidget(name: 'Mr. Mohit Jaiswal', type: 'Non-Billable',)




            ],
          ):
          select==2?
          //Invoiced//
          Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 40,),
              Image.asset(Images.empty,height: 244,),
              SizedBox(height: 20,),
              Poppins(text: 'EMPTY INVOICED',fontSize: 20,color: Get.theme.hintColor,fontWeight: FontWeight.w500,)



            ],
          ):
          select==3?
          //All//
          Column(
            children: [
              ExpenseWidget(name: 'Mr. Piyush Sharma', type: 'Billable',),
              ExpenseWidget(name: 'Mr. Shyam Prajapat', type: 'Non-Billable',),

              ExpenseWidget(name: 'Mr. Mohit Jaiswal', type: 'Billable',),

              ExpenseWidget(name: 'Mr. Mohit Jaiswal', type: 'Non-Billable',)
            ],


          ):
          SizedBox()

        ],),
    );
  }
}
class ExpenseWidget extends StatelessWidget {

  final String name;
  final String type;
  const ExpenseWidget({super.key, required this.name, required this.type,});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){Get.to(LabourScreen());},
      child: Container(
        padding: EdgeInsets.all(10),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,spacing: 3,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Poppins(text: name,fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                Poppins(text: '₹ 1,740.00',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.canvasColor,),


              ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Poppins(text: 'Labor',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.primaryColor,),
                Poppins(text: '09/12/2024',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.hintColor,),
              ],),
            Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)),color: type=='Billable'?Colors.green:type=='Non-Billable'?Colors.red:null),child: Poppins(text: type,fontWeight: FontWeight.w500,fontSize: 14, color: Get.theme.scaffoldBackgroundColor,),)
          ],
        ),
      ),
    );
  }
}
