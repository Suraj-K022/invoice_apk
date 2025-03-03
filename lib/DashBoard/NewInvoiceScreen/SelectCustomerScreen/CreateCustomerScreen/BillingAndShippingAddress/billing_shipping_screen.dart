import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/CreateCustomerScreen/create_customer_screen.dart';

class BillingShippingScreen extends StatelessWidget {
  final String address;
  const BillingShippingScreen({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(child: Poppins(text: 'Save',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,), onPressed: (){Get.back(canPop: true);}),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Get.theme.canvasColor, size: 24),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: address,
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),


      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20),
        children: [



          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color:Get.theme.primaryColor.withOpacity(0.1)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Poppins(text: 'Street 1',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                      CustomTextField(hintText: 'Enter Address'),


                      SizedBox(height: 20,),
                      Poppins(text: 'Street 2',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                      CustomTextField(hintText: 'Enter Address'),
     SizedBox(height: 20,),
                      Poppins(text: 'Email ID',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                      CustomTextField(hintText: 'Enter Email ID '),
                      SizedBox(height: 20,),



                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 20,
                        children: [
                          Expanded(flex: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Poppins(text: 'Country',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                              CustomDropdownField(hintText: 'India', items: [
                                'UK','India','US'
                              ]),

                            ],),
                          ),
                          Expanded(flex: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                              Poppins(text: 'State',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                              CustomDropdownField(hintText: 'M.P', items: [
                                'Andhra Pradesh','Madhya Pradesh','Assam'
                              ]),
                            ],),
                          ),

                      ],),



                      SizedBox(height: 20,),



                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 20,
                        children: [
                          Expanded(flex: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Poppins(text: 'City',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                                CustomDropdownField(hintText: 'Indore', items: [
                                  'Indore','Bhopal','Ujjain'
                                ]),

                              ],),
                          ),
                          Expanded(flex: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                              Poppins(text: 'Zip Code',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                              CustomTextField(hintText: 'ZipCode')
                            ],),
                          ),




                        ],),
SizedBox(height: 20,),

                      Poppins(text: 'Phone Number',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),SizedBox(height: 8,),
                      CustomTextField(hintText: 'Enter Phone Number '),
                      SizedBox(height: 20,),







                    ],
                  ),
                )
              ],
            ),),





        ],),
    );
  }
}
