import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';

class SelectSalesPersonScreen extends StatefulWidget {
  const SelectSalesPersonScreen({super.key});

  @override
  _SelectSalesPersonScreenState createState() => _SelectSalesPersonScreenState();
}

class _SelectSalesPersonScreenState extends State<SelectSalesPersonScreen> {
  final TextEditingController searchController = TextEditingController();
  final List<String> salesPersons = [
    'Piyush Sharma', 'Aman Joshi', 'Abhishek Vyas',
    'Kushagra Jain', 'Aayush Jain', 'Kush Soni',
    'Vikas Gurjar', 'Rishabh Deora', 'Pratham Goswami',
    'Sagar Patel', 'Viram Jadhav', 'Mayur Soni',
  ];
  List<String> filteredSalesPersons = [];

  @override
  void initState() {
    super.initState();
    filteredSalesPersons = List.from(salesPersons);
  }

  void filterSalesPersons(String query) {
    setState(() {
      filteredSalesPersons = query.isEmpty
          ? List.from(salesPersons)
          : salesPersons.where((salesPerson) =>
          salesPerson.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void clearSearch() {
    searchController.clear();
    filterSalesPersons('');
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
          text: 'Select Salesperson',
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
              hintText: 'Search Salesperson',
              prefixIcon: Icons.search_outlined,
              controller: searchController,
              onChanged: filterSalesPersons,
              suffixIcon: searchController.text.isNotEmpty ? Icons.clear : null,
              onSuffixTap: clearSearch,
            ),
            SizedBox(height: 10),
            Expanded(
              child: filteredSalesPersons.isEmpty
                  ? Center(child: Poppins(text: 'No salespersons found', fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey))
                  : ListView.builder(
                itemCount: filteredSalesPersons.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Poppins(
                      text: filteredSalesPersons[index],
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                    onTap: () => Get.back(result: filteredSalesPersons[index]),
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