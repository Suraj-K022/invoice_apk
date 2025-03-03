import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:invoice/BottomNavBar/bottom_nav_bar.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/custom_switch.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/select_customer_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/new_invoice_screen.dart';
import 'package:invoice/DashBoard/dashboard_screen.dart';

class NewExpenseScreen extends StatefulWidget {
  final String appbarTitle;
  final String? customerName;

  const NewExpenseScreen({super.key, this.customerName, required this.appbarTitle});

  @override
  State<NewExpenseScreen> createState() => _NewExpenseScreenState();
}

class _NewExpenseScreenState extends State<NewExpenseScreen> {
  XFile? selectedImage; // Store the selected image
  String? selectedCustomerName;
  final TextEditingController _invoiceDateController = TextEditingController();



  void _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = image;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    selectedCustomerName = widget.customerName;
  }

  @override
  void dispose() {
    _invoiceDateController.dispose();
    super.dispose();
  }

  Future<void> _selectInvoiceDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        _invoiceDateController.text =
        "${pickedDate.day.toString().padLeft(2, '0')}/"
            "${pickedDate.month.toString().padLeft(2, '0')}/"
            "${pickedDate.year}";
      });
    }
  }

  Future<void> selectCustomer() async {
    final result = await Get.to(() => SelectCustomerScreen());
    if (result != null && result is String) {
      setState(() {
        selectedCustomerName = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: () => widget.appbarTitle=='New Expenses'?Get.off(() => BottomNavBar(index: 0)):widget.appbarTitle=='Add Expenses'?Get.offAll(BottomNavBar(index: 3)):Get.back(),
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Get.theme.primaryColor.withOpacity(0.1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(
                    text: 'Date',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.secondaryHeaderColor,
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    onSuffixTap: () => _selectInvoiceDate(context),
                    readOnly: true,
                    controller: _invoiceDateController,
                    hintText: _invoiceDateController.text.isNotEmpty
                        ? _invoiceDateController.text
                        : 'dd/MM/yyyy',
                    suffixIcon: Icons.calendar_today,
                  ),
                  const SizedBox(height: 20),
                  Poppins(
                    text: 'Expense Category',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Get.theme.secondaryHeaderColor,
                  ),
                  const SizedBox(height: 8),
                  CustomDropdownField(
                    hintText: 'Select Expense',
                    items: [
                      'Advertising & Marketing',
                      'Automobile Expense',
                      'Consultant Expense',
                      'Contract Assets',
                      'Credit Card Charges',
                      'Depreciation & Amortization',
                      'Depreciation Expense',
                      'IT & Internet Expenses',
                      'Janitorial Expense',
                      'Lodging',
                    ],
                  ),
                  const SizedBox(height: 20),
                  Poppins(
                    text: 'Rupees (INR)',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Get.theme.secondaryHeaderColor,
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(hintText: 'Enter Amount'),
                  const SizedBox(height: 20),
                  Poppins(
                    text: 'Invoice ID#',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Get.theme.secondaryHeaderColor,
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(hintText: 'Enter Invoice ID'),
                  const SizedBox(height: 20),
                  Poppins(
                    text: 'Customer Details',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.secondaryHeaderColor,
                  ),
                  const SizedBox(height: 8),
                  selectedCustomerName == null
                      ? CustomTextField(
                    hintText: 'Select Customer',
                    suffixIcon: Icons.arrow_forward_ios,
                    readOnly: true,
                    onSuffixTap: selectCustomer,
                  )
                      : CustomerDetailTab(customername: selectedCustomerName),
                ],
              ),
            ),
          ),





          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Get.theme.primaryColor.withOpacity(0.1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(
                    text: 'Attachment',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.secondaryHeaderColor,
                  ),
                  const SizedBox(height: 8),



                  if (selectedImage != null)
                    Image.file(
                      File(selectedImage!.path),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )
                  else
                    CustomTextField(
                      onSuffixTap: _pickImage, // Trigger image picker
                      readOnly: true,
                      hintText: 'Add Attachment',
                      suffixIcon: Icons.attachment_rounded,
                    ),






                  const SizedBox(height: 20),
                  Poppins(
                    text: 'Project',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Get.theme.secondaryHeaderColor,
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    onSuffixTap: (){},
                    readOnly: true,
                    controller: _invoiceDateController,
                    hintText: 'Select Project',
                    suffixIcon: Icons.arrow_forward_ios,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: Get.theme.scaffoldBackgroundColor,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Poppins(text: 'Billable',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,),
                        CustomSwitch(),
                      ],
                    ),
                  ),

SizedBox(height: 30,),

                  CustomButton(
                      child: Poppins(
                        text: 'Save',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Get.theme.scaffoldBackgroundColor,
                      ),
                      onPressed: () {
                        Get.to(BottomNavBar(index: 0));
                      })





                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
