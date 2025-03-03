import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:invoice/BottomNavBar/bottom_nav_bar.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';

class SetReminderScreen extends StatefulWidget {
  const SetReminderScreen({super.key});

  @override
  State<SetReminderScreen> createState() => _SetReminderScreenState();
}

class _SetReminderScreenState extends State<SetReminderScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    _dateController.dispose();
    super.dispose();
  }

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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(child: Poppins(text: 'Save ',color: Get.theme.scaffoldBackgroundColor,fontSize: 16,fontWeight: FontWeight.w500,), onPressed: (){Get.offAll(BottomNavBar(index: 2));}),
      ),
      appBar: AppBar(
        actions: const [
          Icon(Icons.delete_outline, size: 24, color: Colors.red),
          SizedBox(width: 20),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Get.theme.canvasColor, size: 24),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Send Reminder',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Get.theme.primaryColor.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  readOnly: true,
                ),
                const SizedBox(height: 20),
                Poppins(
                  text: 'Bank Charges',
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                  fontSize: 16,
                ),
                const SizedBox(height: 8),
                const CustomTextField(
                  hintText: '0.00',
                ),
                const SizedBox(height: 20),
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
                  text: 'Payment Mode',
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                  fontSize: 16,
                ),
                const SizedBox(height: 8),
              CustomDropdownField(hintText: 'Cash', items: [
                'Bank Remittance','Bank Transfer','Cash','Cheque','Credit Card','UPI'
              ]) ,
                const SizedBox(height: 20),
                Poppins(
                  text: 'Tax Deducted',
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                  fontSize: 16,
                ),
                const SizedBox(height: 8),
             CustomTextField(hintText: '0.00')   ,
                const SizedBox(height: 20),
                Poppins(
                  text: 'Reference ID#',
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                  fontSize: 16,
                ),
                const SizedBox(height: 8),
             CustomTextField(hintText: 'Tap to Enter'),
                const SizedBox(height: 20),




                Container(padding: EdgeInsets.all(10),width: Get.width,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),border: Border.all(width: 1,color: Get.theme.hintColor.withOpacity(0.2))),child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Poppins(text: 'Note : Thank You',color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400,),
                  ],
                ),),







              ],
            ),
          ),
        ],
      ),
    );
  }
}
