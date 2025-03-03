import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';

class SelectCustomerScreen extends StatefulWidget {
  const SelectCustomerScreen({super.key});

  @override
  _SelectCustomerScreenState createState() => _SelectCustomerScreenState();
}

class _SelectCustomerScreenState extends State<SelectCustomerScreen> {
  final TextEditingController searchController = TextEditingController();
  final RxList<String> customers = <String>[].obs;
  final RxList<String> filteredCustomers = <String>[].obs;

  @override
  void initState() {
    super.initState();
    customers.assignAll([
      'Mr. Piyush Sharma', 'Mr. Aman Joshi', 'Mr. Abhishek Vyas', 'Mr. Kushagra Jain',
      'Mr. Aayush Jain', 'Mr. Kush Soni', 'Mr. Vikas Gurjar', 'Mr. Rishabh Deora',
      'Mr. Pratham Goswami', 'Mr. Sagar Patel', 'Mr. Viram Jadhav', 'Mr. Mayur Soni'
    ]);
    filteredCustomers.assignAll(customers);
  }

  void filterCustomers(String query) {
    filteredCustomers.assignAll(
      query.isEmpty
          ? customers
          : customers.where((c) => c.toLowerCase().contains(query.toLowerCase())).toList(),
    );
  }

  void clearSearch() {
    searchController.clear();
    filterCustomers('');
  }

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
          text: 'Select Customer',
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Search Customer',
              prefixIcon: Icons.search_outlined,
              controller: searchController,
              onChanged: filterCustomers,
              suffixIcon: searchController.text.isNotEmpty ? Icons.clear : null,
              onSuffixTap: clearSearch,
            ),
            SizedBox(height: 10),
            Expanded(
              child: filteredCustomers.isEmpty
                  ? Center(child: Poppins(text: 'No customers found', fontSize: 14, color: Colors.grey))
                  : ListView.builder(
                itemCount: filteredCustomers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Poppins(
                      text: filteredCustomers[index],
                      fontSize: 16,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                    onTap: () => Get.back(result: filteredCustomers[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}