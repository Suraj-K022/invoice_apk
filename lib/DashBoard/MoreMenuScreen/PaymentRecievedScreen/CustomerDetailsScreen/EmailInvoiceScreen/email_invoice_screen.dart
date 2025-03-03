import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:invoice/BottomNavBar/bottom_nav_bar.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/customtext.dart';

class EmailInvoiceScreen extends StatelessWidget {
  const EmailInvoiceScreen({super.key});

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
          text: 'Email Invoice',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.start,children: [
            Poppins(text: 'From',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
            Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4,),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)),color: Get.theme.secondaryHeaderColor.withOpacity(0.1)),child: Poppins(text: 'mayursoni7929@gmail.com',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,)),
          ],),
         Divider(color: Get.theme.secondaryHeaderColor.withOpacity(0.1),height: 20,thickness: 1,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.start,children: [
                Poppins(text: 'To',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4,),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)),color: Get.theme.secondaryHeaderColor.withOpacity(0.1)),child: Poppins(text: 'mayursoni7929@gmail.com',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,)),
              ],),
              Icon(Icons.cancel_outlined,size: 24,color: Get.theme.secondaryHeaderColor,)
            ],
          ),


          Divider(color: Get.theme.secondaryHeaderColor.withOpacity(0.1),height: 20,thickness: 1,),


          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Poppins(text: 'Cc',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
            Row(spacing: 10,
              children: [
                Poppins(text: 'Tap to Select',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
                Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
              ],
            ),
          ],),

          Divider(color: Get.theme.secondaryHeaderColor.withOpacity(0.1),height: 20,thickness: 1,),


          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Poppins(text: 'Bcc',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
            Row(spacing: 10,
              children: [
                Poppins(text: 'Tap to Select',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
                Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)
              ],
            ),
          ],),
          Divider(color: Get.theme.secondaryHeaderColor.withOpacity(0.1),height: 20,thickness: 1,),


          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Expanded(child: Poppins(text: 'Subject',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,)),
            Expanded(child: Poppins(text: 'Payment of ₹ 1,740.00 is outsta... ',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.primaryColor,)),
          ],),



          Divider(color: Get.theme.secondaryHeaderColor.withOpacity(0.1),height: 20,thickness: 1,),


          Row(spacing: 20,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Expanded(flex: 3,child: Poppins(text: 'Attachment',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,)),
            Expanded(flex: 5,child: Container(padding: EdgeInsets.symmetric(horizontal: 10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)),color: Get.theme.secondaryHeaderColor.withOpacity(0.1)),
              child: Row(spacing: 10,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Poppins(text: 'Attachment PDF',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  Icon(Icons.cancel_outlined,size: 20,color: Get.theme.secondaryHeaderColor,)
                ],
              ),
            )),
            Expanded(flex: 1,child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,)))
          ],),
          Divider(color: Get.theme.secondaryHeaderColor.withOpacity(0.1),height: 20,thickness: 1,),
          SizedBox(height: 20,),
          Container(
            color: Get.theme.secondaryHeaderColor.withOpacity(0.1),padding: EdgeInsets.symmetric(vertical: 10),child:
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Poppins(text: 'Invoice ',fontWeight: FontWeight.w500,fontSize: 20,color: Get.theme.canvasColor,),
              Poppins(text: '#INV-000003 ',fontWeight: FontWeight.w600,fontSize: 20,color: Get.theme.primaryColor,),
            ],),
          ),
          SizedBox(height: 20,),
          Poppins(text: 'Dear Mrs. Aakash Jain,',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 14,),
          SizedBox(height: 10,),
          Poppins(text: 'Thank you fo your business. Your invoice can be viewed, printed and downloaded as PDF from the link below. You can also choose to pay it online.',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 14,maxLines: 5,),



          SizedBox(height: 30,),
          Poppins(text: 'Invoice Amount',fontSize: 20,fontWeight: FontWeight.w600,color: Get.theme.canvasColor,textAlign: TextAlign.center,),
          Poppins(text: '₹ 1,740.00',fontSize: 40,fontWeight: FontWeight.w600,color: Get.theme.primaryColor,textAlign: TextAlign.center,),
SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dash(
                length: Get.width-40,
                dashLength: 7,
                dashColor:Get.theme.hintColor,
              ),
            ],
          ),
          SizedBox(height: 20,),


          Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Poppins(text: 'Invoice No : ',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,),
    Poppins(text: 'INV-000003',color: Get.theme.canvasColor,fontWeight: FontWeight.w500,fontSize: 16,)

],),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Poppins(text: 'Invoice Date : ',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,),
                Poppins(text: '03/12/2024',color: Get.theme.canvasColor,fontWeight: FontWeight.w500,fontSize: 16,)

              ],),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Poppins(text: 'Due Date : ',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,),
                Poppins(text: '10/12/2024',color: Get.theme.canvasColor,fontWeight: FontWeight.w500,fontSize: 16,)

              ],),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
              child: CustomButton(child: Poppins(text: 'View Invoice',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,), onPressed: (){Get.to(BottomNavBar(index: 2));}),
            )
          ],),



          Poppins(text: 'Regards,',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 20,),
          Poppins(text: 'Mayur Soni,',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          Poppins(text: 'Mayuringotech,',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
          SizedBox(height: 30,),


        ],

      ),

    );
  }
}
