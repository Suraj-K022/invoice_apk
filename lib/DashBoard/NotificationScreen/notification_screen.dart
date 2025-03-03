import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';

class BellScreen extends StatelessWidget {
  const BellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Get.theme.canvasColor, size: 24),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Notification',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(
        children: [
          Container(color: Get.theme.hintColor.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Poppins(
                    text: 'Today',
                    color: Get.theme.canvasColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  Poppins(
                    text: '4 messages',
                    color: Get.theme.secondaryHeaderColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
          CustomNotificationTile(
            title: 'Balaji Corporation',
            amount: 10000.00,
            status: 'Paid',
            description: 'Invoice paid on 10/12/2024',
          ),
          CustomNotificationTile(
            title: 'Balaji Corporation',
            amount: 10000.00,
            status: 'Unpaid',
            description: 'Invoice paid on 10/12/2024',
          ),
          CustomNotificationTile(
            title: 'Balaji Corporation',
            amount: 10000.00,
            status: 'Paid',
            description: 'Invoice paid on 10/12/2024',
          ),
          CustomNotificationTile(
            title: 'Balaji Corporation',
            amount: 10000.00,
            status: 'Unpaid',
            description: 'Invoice paid on 10/12/2024',
          ),




          Container(color: Get.theme.hintColor.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Poppins(
                    text: '04/10/2024',
                    color: Get.theme.canvasColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  Poppins(
                    text: '2 messages',
                    color: Get.theme.secondaryHeaderColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),

                ],
              ),
            ),
          ),

          CustomNotificationTile(
            title: 'Balaji Corporation',
            amount: 10000.00,
            status: 'Paid',
            description: 'Invoice paid on 10/12/2024',
          ),
          CustomNotificationTile(
            title: 'Balaji Corporation',
            amount: 10000.00,
            status: 'Paid',
            description: 'Invoice paid on 10/12/2024',
          ),
        ],
      ),
    );
  }
}

class CustomNotificationTile extends StatelessWidget {
  final String title;
  final String description;
  final double amount;
  final String status;

  const CustomNotificationTile({
    super.key,
    required this.title,
    required this.description,
    required this.amount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Get.theme.hintColor.withOpacity(0.5),width: 1))),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Poppins(
                text: title,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Get.theme.canvasColor,
              ),
              Poppins(
                text: '\₹ ${amount.toStringAsFixed(2)}',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Get.theme.secondaryHeaderColor,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Poppins(
                text: description,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Get.theme.secondaryHeaderColor,
              ),
              Poppins(
                text: status,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: status=='Paid'?Colors.green:Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
