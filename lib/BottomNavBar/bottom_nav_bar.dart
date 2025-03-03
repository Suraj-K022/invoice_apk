import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:invoice/CustomerScreen/customer_screen.dart';
import 'package:invoice/DashBoard/dashboard_screen.dart';
import 'package:invoice/ExpensesScreen/expenses_screen.dart';
import 'package:invoice/InvoiceScreen/invoice_screen.dart';
import 'package:invoice/ItemsScreen/item_screen.dart';


import '../CustomWidgets/customtext.dart';
import '../utils/images.dart';


class BottomNavBar extends StatefulWidget {
  final int index;

  const BottomNavBar({super.key, required this.index});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int index;

  final List<Widget> screens = [
    DashboardScreen(),
    CustomerScreen(),
    InvoiceScreen(),
    ExpensesScreen(),
    ItemScreen(),
  ];

  @override
  void initState() {
    super.initState();
    index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: screens,
      ),
      bottomNavigationBar: Card(elevation: 10,shadowColor: Colors.grey,
        child: Container( color: Colors.grey.shade200,

          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 90,

          child: Row(
            children: [
              _buildNavItem(0,Images.dashboard, Images.dashboarddark,  'Dashboard'),
              _buildNavItem(1, Images.customer, Images.customerdark, 'Customer'),
              _buildNavItem(2,  Images.invoice,Images.invoicedark, 'Invoice'),
              _buildNavItem(3,  Images.expenses,Images.expensesdark, 'Expenses'),
              _buildNavItem(4,  Images.items,Images.itemsdark, 'Items'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int itemIndex, String lightIcon, String darkIcon, String label) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            index = itemIndex;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,spacing: 11,
          children: [
            SizedBox(height: 5,),

            Image.asset(
              index == itemIndex ? darkIcon : lightIcon,
              height: 24,
              width: 24,
              fit: BoxFit.cover,
            ),
            Poppins(
              text: label,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: index==itemIndex?Get.theme.primaryColor:Get.theme.secondaryHeaderColor,
            ),

          ],
        ),
      ),
    );
  }
}

