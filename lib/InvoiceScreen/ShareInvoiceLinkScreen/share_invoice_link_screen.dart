import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/custom_radio_button.dart';
import 'package:invoice/CustomWidgets/customtext.dart';

class ShareInvoiceLinkScreen extends StatefulWidget {
  const ShareInvoiceLinkScreen({super.key});

  @override
  State<ShareInvoiceLinkScreen> createState() => _ShareInvoiceLinkScreenState();
}

class _ShareInvoiceLinkScreenState extends State<ShareInvoiceLinkScreen> {
  String selectedOption = 'public'; // Default selected option
  int visible = 0;
  bool isPublic = true;
  bool isSecured = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Share Invoice Link',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Theme.of(context).secondaryHeaderColor.withOpacity(0.1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Public',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).canvasColor,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Text(
                        'Anyone with the link can access the complete invoice before its expiration date.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        maxLines: 3,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Radio<String>(
                        value: 'public',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                            isPublic = true;
                            isSecured = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                  color:
                      Theme.of(context).secondaryHeaderColor.withOpacity(0.2),
                  thickness: 1,
                ),
                Text(
                  'Private & Secure',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).canvasColor,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Text(
                        'Your Customer can access the invoice only from the Customer Portal.',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        maxLines: 3,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Radio<String>(
                        value: 'private',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                            isSecured = true;
                            isPublic = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (isPublic == true)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Get.theme.secondaryHeaderColor.withOpacity(0.1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins(
                        text: 'Link Expiration Date',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Get.theme.canvasColor,
                      ),
                      Poppins(
                        text: '30/11/2024',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Get.theme.hintColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Poppins(
                  text:
                      'By default, the link is set to expire 90 days from today.',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Get.theme.hintColor,
                ),

                visible == 0 && isPublic == true
                    ? Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Get.theme.secondaryHeaderColor
                                  .withOpacity(0.1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Poppins(
                                  text: 'Disable All Active Links',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red,
                                ),
                                Divider(
                                  height: 20,
                                  color: Get.theme.secondaryHeaderColor
                                      .withOpacity(0.2),
                                  thickness: 1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      visible = 1;
                                    });
                                  },
                                  child: Poppins(
                                    text: 'Generate Link',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Get.theme.canvasColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox()
              ],
            ),
          SizedBox(
            height: 20,
          ),
          visible == 1 && isPublic==true
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color:
                              Get.theme.secondaryHeaderColor.withOpacity(0.1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Poppins(
                            text: 'https://bellwayinvoicepay.in/invoice/m...',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Get.theme.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color:
                              Get.theme.secondaryHeaderColor.withOpacity(0.1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Poppins(
                            text: 'Copy Link',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Get.theme.canvasColor,
                          ),
                          Divider(
                            height: 20,
                            color:
                                Get.theme.secondaryHeaderColor.withOpacity(0.2),
                            thickness: 1,
                          ),
                          Poppins(
                            text: 'Share link...  ',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Get.theme.canvasColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : SizedBox(),
          if (isPublic == false)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Get.theme.secondaryHeaderColor.withOpacity(0.1)),
                  child: Poppins(
                    text:
                        'You haven\'t saved any email address for this customer. You need to save the customer\'s email address in Zoho Invoice and enable Customer Portal for them. Then, they will be able to access the invoice privately in Customer Portal.',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Get.theme.hintColor,
                    maxLines: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(width: Get.width,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Get.theme.secondaryHeaderColor.withOpacity(0.1)),
                  child: Poppins(
                    text: 'Go To Contact',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Get.theme.primaryColor,
                    maxLines: 30,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
