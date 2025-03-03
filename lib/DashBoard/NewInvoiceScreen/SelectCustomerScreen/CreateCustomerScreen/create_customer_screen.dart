import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/BottomNavBar/bottom_nav_bar.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/custom_radio_button.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/CreateCustomerScreen/BillingAndShippingAddress/billing_shipping_screen.dart';

class CreateCustomerScreen extends StatefulWidget {
  final String appbarTitle;
  const CreateCustomerScreen({super.key, required this.appbarTitle});

  @override
  State<CreateCustomerScreen> createState() => _CreateCustomerScreenState();
}

class _CreateCustomerScreenState extends State<CreateCustomerScreen> {
  String _selectedCustomerType = 'Business';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Get.theme.canvasColor, size: 24),
          onPressed: (){Get.back(canPop: true);},
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: widget.appbarTitle,
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),
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
                text: 'Customer Type',
                color: Theme.of(context).canvasColor,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Poppins(
                        text: 'Business',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).canvasColor,
                      ),
                      SizedBox(width: 10),
                      CustomRadioButton(
                        value: 'Business',
                        groupValue: _selectedCustomerType,
                        onChanged: (value) {
                          setState(() {
                            _selectedCustomerType = value.toString();
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Poppins(
                        text: 'Individual',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).canvasColor,
                      ),
                      SizedBox(width: 10),
                      CustomRadioButton(
                        value: 'Individual',
                        groupValue: _selectedCustomerType,
                        onChanged: (value) {
                          setState(() {
                            _selectedCustomerType = value.toString();
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: Get.width,decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)),color: Get.theme.primaryColor),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                child: Poppins(text: 'Customer Information',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.scaffoldBackgroundColor,),),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins(text: 'Salutation',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                    SizedBox(height: 8,),
                    CustomDropdownField(hintText: 'Select Salutation', items: [
                      'Dr.','Mr.','Mrs.','Miss.','Ms.'
                    ]),
                    SizedBox(height: 20,),
                    Poppins(text: 'Full Name',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomTextField(hintText: 'Enter Full Name'),


                    SizedBox(height: 20,),
                    Poppins(text: 'Company Name',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomTextField(hintText: 'Enter Company Name'),


                    SizedBox(height: 20,),
                    Poppins(text: 'Email ID',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomTextField(hintText: 'Enter Email ID '),



                    SizedBox(height: 20,),
                    Poppins(text: 'Phone Number 1',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomTextField(hintText: 'Enter Phone Number '),


                    SizedBox(height: 20,),
                    Poppins(text: 'Phone Number 2',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomTextField(hintText: 'Enter Phone Number '),


                    SizedBox(height: 20,),
                    Poppins(text: 'Website URL',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomTextField(hintText: 'Enter URl '),


                    SizedBox(height: 20,),
                    Poppins(text: 'Pan Card Detail',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomTextField(hintText: 'Enter Pan Number '),



                  ],
                ),
              )
            ],
          ),),
        Container(margin: EdgeInsets.symmetric(vertical: 0),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color:Get.theme.primaryColor.withOpacity(0.1)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: Get.width,decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)),color: Get.theme.primaryColor),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                child: Poppins(text: 'Other Details',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.scaffoldBackgroundColor,),),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins(text: 'Currency',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                    SizedBox(height: 8,),
                    CustomTextField(hintText: 'INR Indian Rupees'),
                    SizedBox(height: 20,),
                    Poppins(text: 'Terms',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomDropdownField(hintText: 'Due On Receipt', items: [
                      'Net 15',
                      'Net 30',
                      'Net 45',
                      'Net 60',
                      'Due Om Receipt',
                      'Due end of the month', 'Due end of next month', 'Custom',

                    ]),
                    SizedBox(height: 20,),
                    Poppins(text: 'Portal Language',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomDropdownField(hintText: 'English', items: [
                      'English',
                      'Hindi',
                      'Gujarati',
                      'Marathi',
                      'Tamil',


                    ]),
                    SizedBox(height: 20,),
                    Poppins(text: 'Billing Address',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomTextField(hintText: 'Add Billing Address',suffixIcon: Icons.arrow_forward_ios,onSuffixTap: (){Get.to(BillingShippingScreen(address: 'Billing Address'));},),
                    SizedBox(height: 20,),
                    Poppins(text: 'Shipping Address',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                CustomTextField(readOnly: true,hintText: 'Add Shipping Address',suffixIcon: Icons.arrow_forward_ios,onSuffixTap: (){Get.to(BillingShippingScreen(address: 'Shipping Address'));},),



                    SizedBox(height: 20,),
                    Poppins(text: 'Remarks/Notes',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                    CustomTextField(readOnly: true,hintText: 'Enter Valid Note',maxLines: 10,),


                    SizedBox(height: 30,),

                    CustomButton(child: Poppins(text: 'Save ',color: Get.theme.scaffoldBackgroundColor,fontSize: 16,fontWeight: FontWeight.w500,), onPressed: (){Get.to(BottomNavBar(index: 0));}),


                    SizedBox(height: 30,),




                  ],
                ),
              )
            ],
          ),),




      ],),
    );
  }
}
