import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/new_invoice_screen.dart';

class ItemInformationScreen extends StatefulWidget {
  final String itemName;
  final double price;

  const ItemInformationScreen({super.key, required this.itemName, required this.price});

  @override
  State<ItemInformationScreen> createState() => _ItemInformationScreenState();
}

class _ItemInformationScreenState extends State<ItemInformationScreen> {
  final TextEditingController descriptionController = TextEditingController();
  double quantity = 1.0;

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
          text: 'Item Information',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Get.theme.primaryColor.withOpacity(0.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)),
                    color: Get.theme.primaryColor,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      Poppins(
                        text: 'Item: ',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Get.theme.scaffoldBackgroundColor,
                      ),
                      Poppins(
                        text: widget.itemName,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Get.theme.scaffoldBackgroundColor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins(
                        text: 'Quantity:',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Get.theme.canvasColor,
                      ),
                      Poppins(
                        text: '${quantity.toStringAsFixed(2)} Kg',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Get.theme.canvasColor,
                      ),
                    ],
                  ),
                ),
                Divider(height: 10, thickness: 1, color: Get.theme.secondaryHeaderColor.withOpacity(0.2)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins(
                        text: 'Rate (INR):',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Get.theme.canvasColor,
                      ),
                      Poppins(
                        text: '₹${widget.price.toStringAsFixed(2)}',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Get.theme.canvasColor,
                      ),
                    ],
                  ),
                ),
                Divider(height: 10, thickness: 1, color: Get.theme.secondaryHeaderColor.withOpacity(0.2)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Poppins(
                    text: 'Description',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.hintColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                  child: CustomTextField(
                    hintText: 'Enter Description',
                    maxLines: 10,
                    controller: descriptionController,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(
          child: Poppins(
            text: 'Save',
            color: Get.theme.scaffoldBackgroundColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          onPressed: () {
            Map<String, dynamic> itemData = {
              "itemName": widget.itemName,
              "price": widget.price,
              "quantity": quantity,
              "description": descriptionController.text,
            };
            Get.to(NewInvoiceScreen(itemName: widget.itemName,appbartitle: 'Create Invoice',));
          },
        ),
      ),
    );
  }
}
