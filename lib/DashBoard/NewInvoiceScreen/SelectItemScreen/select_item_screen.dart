import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/CreateCustomerScreen/create_customer_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectItemScreen/AddItemScreen/add_item_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectItemScreen/ItemInformationScreen/item_information_screen.dart';
import 'package:invoice/utils/images.dart';

class SelectItemScreen extends StatefulWidget {
  const SelectItemScreen({super.key});

  @override
  _SelectItemScreenState createState() => _SelectItemScreenState();
}

class _SelectItemScreenState extends State<SelectItemScreen> {
  final TextEditingController searchController = TextEditingController();
  final RxList<Map<String, dynamic>> items = <Map<String, dynamic>>[
    {'name': 'Pasta', 'price': 10.0},
    {'name': 'Rice', 'price': 15.0},
    {'name': 'Onion', 'price': 8.0},
    {'name': 'Cooking Oil', 'price': 25.0},
    {'name': 'Milk', 'price': 5.0},
    {'name': 'Cheese', 'price': 12.0},
  ].obs;

  RxList<Map<String, dynamic>> filteredItems = <Map<String, dynamic>>[].obs;

  @override
  void initState() {
    super.initState();
    filteredItems.assignAll(items);
    searchController.addListener(() => setState(() {}));
  }

  void filterItems(String query) {
    if (query.isEmpty) {
      filteredItems.assignAll(items);
    } else {
      filteredItems.assignAll(
        items.where((item) => item['name'].toLowerCase().contains(query.toLowerCase())).toList(),
      );
    }
  }

  void clearSearch() {
    searchController.clear();
    filterItems('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () => Get.to(AddItemScreen(status: false,)),
            child: Image.asset(Images.pluscircle, height: 24, width: 24),
          ),
          SizedBox(width: 20),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Get.theme.canvasColor, size: 24),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: 'Select Items',
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
              hintText: 'Search Item',
              prefixIcon: Icons.search_outlined,
              controller: searchController,
              onChanged: filterItems,
              suffixIcon: searchController.text.isNotEmpty ? Icons.clear : null,
              onSuffixTap: clearSearch,
            ),
            SizedBox(height: 10),
            Expanded(
              child: Obx(() {
                if (filteredItems.isEmpty) {
                  return Center(child: Text('No items found'));
                }
                return ListView.builder(
                  itemCount: filteredItems.length,
                  itemBuilder: (context, index) {
                    return
                      ListTile(
                        title: Poppins(
                          text: filteredItems[index]['name'],
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Get.theme.canvasColor,
                        ),
                        trailing: Poppins(
                          text: '₹${(filteredItems[index]['price'] as num).toStringAsFixed(2)}',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Get.theme.hintColor,
                        ),
                        onTap: () {
                          Get.to(
                            ItemInformationScreen(
                              itemName: filteredItems[index]['name'],price: filteredItems[index]['price'] ,

                            ),
                          );
                        },
                      );

                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}