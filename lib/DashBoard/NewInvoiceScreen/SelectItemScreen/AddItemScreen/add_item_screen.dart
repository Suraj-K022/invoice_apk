import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/custom_radio_button.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/CreateCustomerScreen/BillingAndShippingAddress/billing_shipping_screen.dart';

class AddItemScreen extends StatefulWidget {
 final bool status;
 final String? isempty;

  const AddItemScreen({super.key, required this.status, this.isempty, });

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  String selectedType = 'Goods'; // Default selection
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(
            child: Poppins(
              text: 'Save',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Get.theme.scaffoldBackgroundColor,
            ),
            onPressed: () {Get.back();}),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Get.theme.canvasColor, size: 24),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Add Items',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body:
      ListView(padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(
                color: Theme.of(context).secondaryHeaderColor.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Poppins(
                  text: 'Item Type',
                  color: Theme.of(context).canvasColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
                SizedBox(height: 20),
                Row(spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Poppins(
                          text: 'Goods',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).canvasColor,
                        ),
                        CustomRadioButton(
                          value: 'Goods',
                          groupValue: selectedType,
                          onChanged: (value) {
                            setState(() {
                              selectedType = value.toString();
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Row(spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Poppins(
                          text: 'Service',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).canvasColor,
                        ),
                        CustomRadioButton(
                          value: 'Service',
                          groupValue: selectedType,
                          onChanged: (value) {
                            setState(() {
                              selectedType = value.toString();
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),


          Container(margin: EdgeInsets.symmetric(vertical: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color:Get.theme.primaryColor.withOpacity(0.1)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(text: 'Item Name',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  SizedBox(height: 8,),
                  CustomTextField(hintText: 'Enter Item'),
                  SizedBox(height: 20,),
                  Poppins(text: 'Unit',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                  CustomDropdownField(hintText: 'Select Unit', items: [
                    'box',
                    'cm',
                    'dz',
                    'ft',
                    'g',
                    'in',
                    'kg',
                    'km',
                    'lb',
                    'mg',
                    'ml',
                    'm',
                    'pcs',

                  ]),


                  SizedBox(height: 20,),
                  Poppins(text: 'Item Price',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                  CustomTextField(hintText: '0.00'),


                  SizedBox(height: 20,),
                  Poppins(text: 'Description',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                  CustomTextField(hintText: 'Enter Description',maxLines: 4,),





                ],
              ),
            ),),



          widget.status==true?Row(spacing: 20,
          children: [
            widget.isempty=='Yes'?Expanded(child: Container(decoration: BoxDecoration(color: Colors.green.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(8))),padding: EdgeInsets.symmetric(vertical: 8),child: Center(child: Poppins(text: 'Active',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.green,),),),):

            Expanded(child: Container(decoration: BoxDecoration(color: Colors.orange.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(8))),padding: EdgeInsets.symmetric(vertical: 8),child: Center(child: Poppins(text: 'Inactive',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.orange,),),),),
            Expanded(child: Container(decoration: BoxDecoration(color: Colors.red.withOpacity(0.2),borderRadius: BorderRadius.all(Radius.circular(8))),padding: EdgeInsets.symmetric(vertical: 8),child: Center(child: Poppins(text: 'Delete',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.red,),))),
          ],):SizedBox()





        ],),
    );
  }
}
