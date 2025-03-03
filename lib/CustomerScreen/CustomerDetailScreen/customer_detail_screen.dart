import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/ViewPDFScreen/view_pdf_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/CreateCustomerScreen/create_customer_screen.dart';
import 'package:invoice/utils/images.dart';

class CustomerDetailScreen extends StatelessWidget {
  const CustomerDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Get.theme.canvasColor, size: 24),
          onPressed: () => Get.back(),
        ),
        actions: [InkWell(onTap: (){Get.to(CreateCustomerScreen(appbarTitle: 'Edit Customer',));},
            child: Poppins(text: 'Edit ',color: Get.theme.primaryColor,fontSize: 14,fontWeight: FontWeight.w500,)),SizedBox(width: 20,)],

      
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Customer Details ',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),

      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,),children: [
        Container(margin: EdgeInsets.symmetric(vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(color: Get.theme.hintColor.withOpacity(0.2),width: 1)),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child:



         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex:1,
                child: Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.bigphone,height: 24,width: 24,),),
                    Poppins(text: 'Call',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,)
                  ],
                ),
              ),

              Expanded(flex:1,
                child: InkWell(onTap: (){Get.to(ViewPdfScreen());},
                  child: Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.aero,height: 24,width: 24,),),
                      Poppins(text: 'Email',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,)
                    ],
                  ),
                ),
              ),
              Expanded(flex:1,
                child: Column(spacing:10,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(padding: EdgeInsets.all(13),decoration: BoxDecoration(color: Get.theme.primaryColor,borderRadius: BorderRadius.all(Radius.circular(8))),child: Image.asset(Images.bigChat,height: 24,width: 24,),),
                    Poppins(text: 'Message',fontWeight: FontWeight.w500,fontSize: 12,color: Get.theme.canvasColor,)
                  ],
                )
              ),
              Expanded(flex: 1,
                  child:
                  InkWell(
                    onTap: () {
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

            ],),),
SizedBox(height: 20,),
        
        
        Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.1),borderRadius: BorderRadius.circular(8)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Poppins(text: 'Outstanding Receivables',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.primaryColor,),
              Poppins(text: 'Unused Credits',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.primaryColor,),
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Poppins(text: '₹ 600.00',fontSize: 24,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
              Poppins(text: '₹ 0.00',fontSize: 24,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),

            ],)
          ],),),

SizedBox(height: 20,),

        Container(decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.1),borderRadius: BorderRadius.circular(8),)
          ,child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
            Container(width: Get.width,padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),color: Get.theme.primaryColor,),child: Poppins(text: 'Contact Information',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.scaffoldBackgroundColor,),),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Expanded(child: Poppins(text: 'Mr. Mayur Soni',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,)),
                  Row(mainAxisAlignment: MainAxisAlignment.end,spacing: 10,children: [
                    Card(elevation: 2,child: Container(padding: EdgeInsets.all(5),decoration: BoxDecoration(shape: BoxShape.circle),child: Image.asset(Images.phone,height: 18,width: 18,),)),
                    Card(elevation: 2,child: Container(padding: EdgeInsets.all(5),decoration: BoxDecoration(shape: BoxShape.circle),child: Image.asset(Images.chat,height: 18,width: 18,),)),
                    Card(elevation: 2,child: Container(padding: EdgeInsets.all(5),decoration: BoxDecoration(shape: BoxShape.circle),child: Image.asset(Images.tele,height: 18,width: 18,),)),
                  ],),
                ],),
                    Poppins(text: 'mayursoni4125@gmail.com',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,),
                    SizedBox(height: 3,),
                    Poppins(text: '7999995152 | 9777775152',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.hintColor,)

              ],),
            )
          ],),),





        SizedBox(height: 20,),

        Container(decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.1),borderRadius: BorderRadius.circular(8),)
          ,child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
            Container(width: Get.width,padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),color: Get.theme.primaryColor,),child: Poppins(text: 'Other Details',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.scaffoldBackgroundColor,),),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Poppins(text: 'Currency Code',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
  SizedBox(height: 8,),
CustomTextField(hintText: 'INR'),
SizedBox(height: 20,),
  Poppins(text: 'Language ',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
  SizedBox(height: 8,),
CustomDropdownField(hintText: 'English', items: ['English','Hindi','Marathi','Tamil','Gujarati','']),

SizedBox(height: 20,),

  Poppins(text: 'Remark/Notes',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
  SizedBox(height: 8,),
  CustomTextField(hintText: 'No note entered',maxLines: 5,),
],

              ),
            ),
          ],),),
        SizedBox(height: 10,)

      ],),

    );
  }
}
