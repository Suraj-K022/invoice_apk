import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/payment_recieved_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/select_customer_screen.dart';

class AddPaymentScreen extends StatefulWidget {
  final String? customerName;
  const AddPaymentScreen({super.key, this.customerName});

  @override
  State<AddPaymentScreen> createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
  String? selectedCustomerName;

  @override
  void initState() {
    super.initState();
    selectedCustomerName = widget.customerName;
  }

  Future<void> selectCustomer() async {
    final result = await Get.to(() => SelectCustomerScreen());
    if (result is String) {
      setState(() {
        selectedCustomerName = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(child: Poppins(text: 'Save',color: Get.theme.scaffoldBackgroundColor,fontSize: 16,fontWeight: FontWeight.w500,), onPressed: (){Get.back(canPop: true);}),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: Get.back,
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Add Payment',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),

        children: [
          Poppins(
            text: 'Customer Details',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Get.theme.secondaryHeaderColor,
          ),
          const SizedBox(height: 8),
          CustomTextField(
            hintText: selectedCustomerName ?? 'Select Customer',
            suffixIcon: Icons.arrow_forward_ios,
            readOnly: true,
            onSuffixTap: selectCustomer,
          ),


          SizedBox(height: 20,),
          Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.1),borderRadius: BorderRadius.circular(8)),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
            Poppins(
              text: 'Amount (INR)',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Enter Amount'),


            SizedBox(height: 20,),


            Poppins(
              text: 'Bank Charges',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 8,),
            CustomTextField(hintText: '₹ 0.00'),



            SizedBox(height: 20,),


            Poppins(
              text: 'Payment Date',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'dd/mm/yy'),



            SizedBox(height: 20,),


            Poppins(
              text: 'Payment Mode',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 8,),
            CustomDropdownField(hintText: 'Cheque', items: [

              'Bank Remittance','Bank Transfer','Cash','Cheque','Credit Card','UPI'
            ]),




            SizedBox(height: 20,),


            Poppins(
              text: 'Reference#',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 8,),
            CustomTextField(hintText: '----'),




          ],),),



SizedBox(height: 20,),


          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Get.theme.primaryColor.withOpacity(0.1),),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: Get.width,decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.only(topLeft: Radius.circular( 8),topRight: Radius.circular(8)),),padding: EdgeInsets.all(10),child: Poppins(text: 'Invoice Information',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,),
                ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   Poppins(text: 'Invoice Number',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
                   SizedBox(height: 8,),
                   CustomTextField(hintText: 'INV-000005'),
                   SizedBox(height: 20,),
                   Poppins(text: 'Amount Due',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
                   SizedBox(height: 8,),
                   CustomTextField(hintText: 'Amount Due'),
                   SizedBox(height: 20,),
                   Poppins(text: 'Payment',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
                   SizedBox(height: 8,),
                   CustomTextField(hintText: '₹ 1,200.00'),
                   SizedBox(height: 20,),
                 ],),
               )
              ],
            ),
          ),




          SizedBox(height: 20,),


          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Get.theme.primaryColor.withOpacity(0.1),),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: Get.width,decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.only(topLeft: Radius.circular( 8),topRight: Radius.circular(8)),),padding: EdgeInsets.all(10),child: Poppins(text: 'Amount Information',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Poppins(text: 'Amount Received',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
                      SizedBox(height: 8,),
                      CustomTextField(hintText: '₹ 1,200.00'),
                      SizedBox(height: 20,),
                      Poppins(text: 'Amount Used',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
                      SizedBox(height: 8,),
                      CustomTextField(hintText: '₹ 1,200.00'),
                      SizedBox(height: 20,),
                      Poppins(text: 'Excess Amount',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
                      SizedBox(height: 8,),
                      CustomTextField(hintText: '₹ 1,200.00'),

                    ],),

                )
              ],
            ),
          ),





        ],
      ),
    );
  }
}