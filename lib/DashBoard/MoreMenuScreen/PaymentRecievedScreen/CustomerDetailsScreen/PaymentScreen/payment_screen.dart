import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:intl/intl.dart';
import 'package:invoice/DashBoard/MoreMenuScreen/PaymentRecievedScreen/CustomerDetailsScreen/PaymentScreen/SetReminderScreen/set_reminder_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  Future<void> _selectDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text = DateFormat('dd/MM/yyyy').format(pickedDate);
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
          onPressed: () => Get.back(),
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Payment',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Poppins(
            text: 'Date',
            fontWeight: FontWeight.w500,
            color: Get.theme.secondaryHeaderColor,
            fontSize: 16,
          ),
          const SizedBox(height: 8),
          CustomTextField(
            hintText: 'dd/mm/yyyy',
            controller: _dateController,
            suffixIcon: Icons.date_range,
            onSuffixTap: _selectDate,
            readOnly: true,
          ),
          const SizedBox(height: 20),
          Poppins(
            text: 'Amount',
            fontWeight: FontWeight.w500,
            color: Get.theme.secondaryHeaderColor,
            fontSize: 16,
          ),
          const SizedBox(height: 8),
          CustomTextField(
            hintText: 'Enter Amount',
            controller: _amountController,
            suffixIcon: Icons.arrow_forward_ios,
            readOnly: true,
            onSuffixTap: (){Get.to(SetReminderScreen());},


          ),
        ],
      ),
    );
  }
}