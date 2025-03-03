import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/CustomerScreen/CustomerDetailScreen/customer_detail_screen.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/ViewAttachmentsScreen/view_attachments_screen.dart';
import 'package:invoice/DashBoard/NewExpenseScreen/new_expense_Screen.dart';
import 'package:invoice/utils/images.dart';

class LabourScreen extends StatefulWidget {
  const LabourScreen({super.key});

  @override
  State<LabourScreen> createState() => _LabourScreenState();
}

class _LabourScreenState extends State<LabourScreen> {
  int select=0;


  int _currentStep = 0;

  final List<Map<String, String>> steps = [
    {"time": "About a minute ago", "status": "Expenses Updated"},
    {"time": "22 hours ago", "status": "Expenses Updated"},
    {"time": "22 hours ago", "status": "Expenses Updated"},
    {"time": "02/12/2024 12:00 AM", "status": "Expenses Updated"},
    {
      "time": "02/12/2024 12:00 AM",
      "status": "Expenses Created\n for ₹ 1,740.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [InkWell(onTap: (){





          showMenu(surfaceTintColor: Get.theme.scaffoldBackgroundColor,
            context: context,
            position: RelativeRect.fromLTRB(100, 0, 0, 0), // Adjust the position as needed
            items: [
              PopupMenuItem(onTap: (){Get.to(NewExpenseScreen(appbarTitle: 'Edit Expenses'));},child: Row(spacing: 10,children: [Image.asset(Images.i3,height: 24,width: 24,),Poppins(text: 'Edit',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
              PopupMenuItem(onTap: (){Get.to(ViewAttachmentsScreen(appbartitle: 'Attachment File',));},child: Row(spacing: 10,children: [Image.asset(Images.w3,height: 24,width: 24,),Poppins(text: 'View Attachments',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
              PopupMenuItem(onTap: (){Get.to(NewExpenseScreen(appbarTitle: 'Clone Expenses'));},child: Row(spacing: 10,children: [Image.asset(Images.w4,height: 24,width: 24,),Poppins(text: 'Clone',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),
              PopupMenuItem(onTap: (){



                showDialog(context: context, builder: (context) {
                  return
                    AlertDialog(contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 24),backgroundColor: Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      title: Column(
                        children: [
                          CircleAvatar(backgroundColor: Get.theme.primaryColor.withOpacity(0.1),child: Icon(Icons.delete_outline,color: Get.theme.primaryColor,)),
                          SizedBox(height: 10,),
                          Poppins(text: 'Are you sure you want to delete this Expenses?',textAlign: TextAlign.center,fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,maxLines: 10,),
                        ],
                      ),
                      content: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,spacing: 20,
                        children: [
                          Expanded(child: InkWell(onTap: (){Get.back(canPop: true);},child: Container(height: 38,decoration: BoxDecoration(border: Border.all(color:Get.theme.primaryColor,width: 1),borderRadius: BorderRadius.circular(5),color: Get.theme.cardColor),child: Center(child: Poppins(text: 'Cancel',fontSize: 16,color: Get.theme.primaryColor,fontWeight: FontWeight.w500),),),)),

                          Expanded(child: InkWell(onTap: (){Get.back(canPop: true);},child: Container(height: 38,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Get.theme.primaryColor),child: Center(child: Poppins(text: 'Delete',fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),),)),

                        ],
                      ),






                    );

                },);
              },child: Row(spacing: 10,children: [Image.asset(Images.w8,height: 24,width: 24,),Poppins(text: 'Delete',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),],)),

            ],
          );










        },child: Image.asset(Images.dotmenu,width: 24,height: 24,)),SizedBox(width: 20,)],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: () => Get.back(),

        ),

        centerTitle: true,
        title: Poppins(
          text: 'Labour',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),children: [



        Container(padding: EdgeInsets.all( 10),decoration: BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.1),borderRadius: BorderRadius.all(Radius.circular(8))),child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Poppins(text: 'Labor',fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,fontSize: 14,),
                Poppins(text: 'Non-Billable',fontWeight: FontWeight.w400,color: Get.theme.hintColor,fontSize: 14,),
                SizedBox(height: 10,),
                Poppins(text: '₹ 1,740.00',fontWeight: FontWeight.w600,color: Colors.green,fontSize: 20,),
                Poppins(text: '09/12/2024',fontWeight: FontWeight.w500,color: Get.theme.hintColor,fontSize: 14,),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.attach,height: 40,width: 40,),
                Poppins(text: '1 attachment’s \navailable',textAlign: TextAlign.center,fontWeight: FontWeight.w500,color: Get.theme.canvasColor,fontSize: 12,),


            ],),

          ],
        ),),


        SizedBox(height: 20,),
        Container(height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Get.theme.hintColor.withOpacity(0.2)),
        child: Row(
          children: [
            Expanded(child: InkWell(onTap: (){setState(() {
              select=0;
            });},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: select==0?Get.theme.primaryColor:null),child: Center(child: Poppins(text: 'Expenses Details',fontSize: 14,fontWeight: FontWeight.w500,color: select==0?Get.theme.scaffoldBackgroundColor:Get.theme.canvasColor,),),)),),
            Expanded(child: InkWell(onTap: (){
              setState(() {
                select=1;
              });
            },child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: select==1?Get.theme.primaryColor:null),child: Center(child: Poppins(text: 'History',fontSize: 14,fontWeight: FontWeight.w500,color: select==1?Get.theme.scaffoldBackgroundColor:Get.theme.canvasColor),)))),
          ],
        ),),


        SizedBox(height: 20,),
       select==0? Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),),child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(onTap: (){Get.to(CustomerDetailScreen());},
            minTileHeight: 30,
            leading: Image.asset(Images.user,height: 24,width: 24,),
            title: Poppins(text: 'Customer',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.primaryColor,),
            subtitle: Poppins(text: 'Mr. Piyush Sharma',fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
            trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Get.theme.secondaryHeaderColor,),
          ),
          Divider(color: Get.theme.secondaryHeaderColor.withOpacity(0.1),),
          ListTile(minTileHeight: 30,
            leading: Image.asset(Images.note,height: 24,width: 24,),
            title: Poppins(text: 'Notes',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.primaryColor,),
            subtitle: Poppins(text: 'No note entered',fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
          ),
        ],),):select==1?Column(

         children: [
           Stepper(
             connectorColor: MaterialStateProperty.all(Get.theme.primaryColor),
             currentStep: _currentStep,


             onStepTapped: (step) => setState(() => _currentStep = step),
             physics: ClampingScrollPhysics(),
             steps:
             steps
                 .map(
                   (step) => Step(
                 title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       step["time"]!,
                       style: GoogleFonts.poppins(color: Get.theme.hintColor, fontSize: 12,fontWeight: FontWeight.w400),
                     ),
                     Text(
                       "By Mayur Soni",
                       style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor, fontSize: 12,fontWeight: FontWeight.w500),
                     ),
                   ],
                 ),

                 subtitle: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       step["status"]!,
                       style: GoogleFonts.poppins(
                         color: Get.theme.secondaryHeaderColor,
                         fontSize: 14,
                         fontWeight: FontWeight.w600,
                       ),
                     ),

                   ],
                 ),
                 content: SizedBox.shrink(), // Keeps steps compact
                 isActive: true,

               ),
             )
                 .toList(),
             controlsBuilder: (context, details) => SizedBox.shrink(),
           )
         ],

       ):SizedBox(),
      ],),
    );
  }
}
