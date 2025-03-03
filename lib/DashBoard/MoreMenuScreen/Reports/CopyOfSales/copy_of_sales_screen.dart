import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/utils/images.dart';

class CopyOfSalesScreen extends StatelessWidget {
  final String appbarTitle;
  const CopyOfSalesScreen({super.key, required this.appbarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            Images.share,
            height: 24,
            width: 24,
          ),
          SizedBox(
            width: 20,
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: Get.back,
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: appbarTitle,
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Card(
            child: appbarTitle == 'Sales by Customer PDF'
                ? Image.asset(Images.customerpdf)
                : appbarTitle == 'Sales by Items PDF'
                    ? Image.asset(Images.itemspdf)
                    : appbarTitle == 'Sales by Salesperson PDF'
                        ? Image.asset(Images.salespersonpddf)
                        : appbarTitle == 'Customer Balance Summary'
                            ? Image.asset(Images.customerbalancepdf)
                            : appbarTitle == 'AR Aging  Summary'
                                ? Image.asset(Images.agingpdf)
                                : appbarTitle == 'AR Ageing Details'
                                    ? Image.asset(Images.agingdetpdf)
                                    : appbarTitle == 'Payment Received PDF'
                                        ? Image.asset(Images.paymentrecievedpdf)
                                        : appbarTitle ==
                                                'Expenses by Category PDF'
                                            ? Image.asset(
                                                Images.expensecategorypdf)
                                            : SizedBox(),
          )
        ],
      ),
    );
  }
}
