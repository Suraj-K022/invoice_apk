import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice/BottomNavBar/bottom_nav_bar.dart';

import 'package:invoice/CustomWidgets/Custom_input_text_field.dart';
import 'package:invoice/CustomWidgets/custom_buttons.dart';
import 'package:invoice/CustomWidgets/custom_dropdown_field.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SalesPersonScreen/salesperson_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectCustomerScreen/select_customer_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectItemScreen/select_item_screen.dart';
import 'package:invoice/DashBoard/NewInvoiceScreen/SelectTemplateScreen/select_template_screen.dart';
import 'package:invoice/ItemsScreen/item_screen.dart';
import 'package:invoice/utils/images.dart';

class NewInvoiceScreen extends StatefulWidget {
  final String appbartitle;

  final String? customerName;
  final String? itemName;
  NewInvoiceScreen({
    super.key,
    this.customerName, this.itemName, required this.appbartitle,
  });
  @override
  State<NewInvoiceScreen> createState() => _NewInvoiceScreenState();
}

class _NewInvoiceScreenState extends State<NewInvoiceScreen> {
  String? selectedCustomerName;
  String? templateimg;

  @override
  void initState() {
    super.initState();
    selectedCustomerName = widget.customerName;
  }

  Future<void> selectCustomer() async {
    final result = await Get.to(() => SelectCustomerScreen());
    if (result != null) {
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
          onPressed: () => widget.appbartitle=='Clone Invoice'?Get.back():widget.appbartitle=='Create Invoice'?Get.off(BottomNavBar(index: 2)):Get.off(BottomNavBar(index: 0)),
        ),
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Poppins(
          text: widget.appbartitle,
          color: Get.theme.canvasColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            selectedCustomerName == null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Poppins(
                        text: 'Customer Details',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Get.theme.secondaryHeaderColor,
                      ),
                      SizedBox(height: 8),
                      CustomTextField(
                        hintText: selectedCustomerName ?? 'Select Customer',
                        suffixIcon: Icons.arrow_forward_ios,
                        readOnly: true,
                        onSuffixTap: selectCustomer,
                      ),
                    ],
                  )
                : CustomerDetailTab(customername: selectedCustomerName),
            widget.itemName!=null?Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Get.theme.primaryColor.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          color: Get.theme.primaryColor),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Poppins(
                              text: 'Item Details',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Get.theme.scaffoldBackgroundColor,
                            ),
                            InkWell(onTap: (){Get.to(SelectItemScreen());},
                              child: Row(
                                spacing: 5,
                                children: [
                                  Image.asset(
                                    Images.pluscircle,
                                    width: 24,
                                    height: 24,
                                    color: Get.theme.scaffoldBackgroundColor,
                                  ),
                                  Poppins(
                                    text: 'Add Item',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Get.theme.scaffoldBackgroundColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 5,
                                children: [
                                  Image.asset(Images.pluscircle,
                                      height: 24, width: 24),
                                  Poppins(
                                    text: widget.itemName.toString(),
                                    fontSize: 16,
                                    color: Get.theme.secondaryHeaderColor,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                              Poppins(
                                text: '80.00',
                                fontSize: 16,
                                color: Get.theme.secondaryHeaderColor,
                                fontWeight: FontWeight.w600,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Poppins(
                                text: '4 x 80.00',
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          Divider(
                            color: Get.theme.hintColor.withOpacity(
                              0.4,
                            ),
                            height: 20,
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Poppins(
                                text: 'Sub Total :     ',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                              Poppins(
                                text: '320.00',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Poppins(
                                text: 'Discount :     ',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                              Poppins(
                                text: '    0.00',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Poppins(
                                text: 'Adjustment :     ',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                              Poppins(
                                text: '    0.00',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Poppins(
                                text: 'TCS :     ',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                              Poppins(
                                text: '    0.00',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Poppins(
                                text: 'TDS :     ',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                              Poppins(
                                text: '    0.00',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                            ],
                          ),
                          Divider(
                            indent: Get.width / 2,
                            color: Get.theme.hintColor.withOpacity(
                              0.4,
                            ),
                            height: 20,
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Poppins(
                                text: 'Total (INR) :     ',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                              Poppins(
                                text: '320.00',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ):
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Poppins(
                  text: 'Item Details',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(
                  hintText: widget.itemName!=null?widget.itemName.toString():'Select Item Name',
                  suffixIcon: Icons.arrow_forward_ios,
                  readOnly: true,
                  onSuffixTap: () {
                    Get.to(SelectItemScreen()
                    );

                  },
                ),

              ],
            ),

            InvoiceDetailWidget(),
          ],
        ),
      ),
    );
  }
}

class CustomerDetailTab extends StatefulWidget {
  final String? customername;
  const CustomerDetailTab({super.key, required this.customername});

  @override
  State<CustomerDetailTab> createState() => _CustomerDetailTabState();
}

class _CustomerDetailTabState extends State<CustomerDetailTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Get.theme.primaryColor.withOpacity(0.1),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                color: Get.theme.primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Poppins(
                  text: 'Customer Details',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Get.theme.scaffoldBackgroundColor,
                ),
                InkWell(
                    onTap: () {
                      Get.to(SelectCustomerScreen());
                    },
                    child: Poppins(
                      text: 'Change',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Get.theme.scaffoldBackgroundColor,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Poppins(
                      text: 'Name : ',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Get.theme.canvasColor,
                    ),
                    Poppins(
                      text: widget.customername
                          .toString(), // Fallback for empty values
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Poppins(
                      text: 'Mobile No : ',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Get.theme.canvasColor,
                    ),
                    Poppins(
                      text: '+917974855554',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Poppins(
                      text: 'Email : ',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Get.theme.canvasColor,
                    ),
                    Poppins(
                      text: 'sharmapiyush4124@gmail.com',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                  ],
                ),
                Divider(
                  color: Get.theme.hintColor.withOpacity(
                    0.4,
                  ),
                  height: 20,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Poppins(
                      text: 'Billing Address',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Get.theme.canvasColor,
                    ),
                    Poppins(
                      text: 'Change Address',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Get.theme.primaryColor,
                    ),
                  ],
                ),
                Poppins(
                  text:
                      'Bekunt dham Anmol space floor no 4th office no 405 Indore (412541) India',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Get.theme.secondaryHeaderColor,
                  maxLines: 3,
                ),
                Divider(
                  color: Get.theme.hintColor.withOpacity(
                    0.4,
                  ),
                  height: 20,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Poppins(
                      text: 'Shipping Address',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Get.theme.canvasColor,
                    ),
                    Poppins(
                      text: 'Change Address',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Get.theme.primaryColor,
                    ),
                  ],
                ),
                Poppins(
                  text: '103 Kalani Nagar Airport Road Indore (42002) India',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Get.theme.secondaryHeaderColor,
                  maxLines: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class InvoiceDetailWidget extends StatefulWidget {
  final String? templateimg;
  const InvoiceDetailWidget({super.key, this.templateimg});

  @override
  State<InvoiceDetailWidget> createState() => _InvoiceDetailWidgetState();
}

class _InvoiceDetailWidgetState extends State<InvoiceDetailWidget> {
  // Invoice Date Controller
  final TextEditingController _invoiceDateController = TextEditingController();
  final TextEditingController _dueDateController =
      TextEditingController(); // Due Date Controller
  final TextEditingController _salesmancontroller = TextEditingController(); //

  // Function to select invoice date
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

  // Function to select due date
  Future<void> _selectDueDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        _dueDateController.text =
            "${pickedDate.day.toString().padLeft(2, '0')}/"
            "${pickedDate.month.toString().padLeft(2, '0')}/"
            "${pickedDate.year}";
      });
    }
  }

  void _selectSalesPerson() async {
    final selectedSalesPerson = await Get.to(() => SelectSalesPersonScreen());
    if (selectedSalesPerson != null) {
      setState(() {
        _salesmancontroller.text = selectedSalesPerson;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Get.theme.primaryColor.withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8), topLeft: Radius.circular(8)),
              color: Get.theme.primaryColor,
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Poppins(
              text: 'Invoice Details',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Get.theme.scaffoldBackgroundColor,
            ),
          ),
          SizedBox(height: 10),

          // Invoice Date Field
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Poppins(
                  text: 'Invoice Date',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(
                  onSuffixTap: () => _selectInvoiceDate(context),
                  readOnly: true,
                  controller: _invoiceDateController,
                  hintText: _invoiceDateController.text.isEmpty
                      ? 'dd/MM/yyyy'
                      : _invoiceDateController.text,
                  suffixIcon: Icons.calendar_today,
                ),
                SizedBox(height: 20),

                // Terms Dropdown
                Poppins(
                  text: 'Terms',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomDropdownField(hintText: 'Due On Receipt', items: [
                  'Net 15',
                  'Net 30',
                  'Net 45',
                  'Net 60',
                  'Due On Receipt',
                  'Due end of the month',
                  'Due end of next month',
                  'Custom'
                ]),
                SizedBox(height: 20),

                // Due Date Field
                Poppins(
                  text: 'Due Date',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(
                  onSuffixTap: () => _selectDueDate(context),
                  readOnly: true,
                  controller: _dueDateController,
                  hintText: _dueDateController.text.isEmpty
                      ? 'dd/MM/yyyy'
                      : _dueDateController.text,
                  suffixIcon: Icons.calendar_today,
                ),
                SizedBox(height: 20),

                // Invoice No. Field
                Poppins(
                  text: 'Invoice No.#',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: 'INV-000001'),
                SizedBox(height: 20),

                // Order ID Field
                Poppins(
                  text: 'Order ID #',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(hintText: 'Enter Order ID'),
                SizedBox(height: 20),

                // Salesperson Field
                Poppins(
                  text: 'Salesperson',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(
                  controller: _salesmancontroller,
                  hintText: 'Select Salesperson',
                  suffixIcon: Icons.arrow_forward_ios,
                  readOnly: true,
                  onSuffixTap: _selectSalesPerson,
                ),
                SizedBox(height: 20),

                // Payment Mode Dropdown
                Poppins(
                  text: 'Payment Mode',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomDropdownField(
                  hintText: 'Select Payment Mode',
                  items: [
                    'Bank Remittance',
                    'Bank Transfer',
                    'Cash',
                    'Cheque',
                    'Credit Card',
                    'UPI'
                  ],
                ),
                SizedBox(height: 20),

                // Subject Field
                Poppins(
                  text: 'Subject',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
                SizedBox(height: 8),
                CustomTextField(
                  hintText: 'Enter Valid Subject',
                  maxLines: 5,
                ),
                SizedBox(
                  height: 20,
                ),
                PdfWidget(),
                SizedBox(
                  height: 30,
                ),

                CustomButton(
                    child: Poppins(
                      text: 'Save',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.scaffoldBackgroundColor,
                    ),
                    onPressed: () {Get.off(BottomNavBar(index: 0));})
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PdfWidget extends StatefulWidget {
  const PdfWidget({super.key});

  @override
  State<PdfWidget> createState() => _PdfWidgetState();
}

class _PdfWidgetState extends State<PdfWidget> {
  String? templateimg; // Holds selected template image

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Poppins(
          text: 'PDF Template',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Get.theme.secondaryHeaderColor,
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {
            Get.to(() => SelectTemplateScreen(templateimg: templateimg))
                ?.then((result) {
              if (result != null && result is String) {
                setState(() {
                  templateimg = result;
                });
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: Get.theme.scaffoldBackgroundColor,
            ),
            padding: const EdgeInsets.all(10),
            child: Center(
              child: templateimg != null
                  ? Image.asset(
                      templateimg!,
                      width: 100,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              Images.pdf,
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 10),
                            Poppins(
                              text: 'Spreadsheet Template',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Get.theme.primaryColor,
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Get.theme.secondaryHeaderColor,
                          size: 24,
                        )
                      ],
                    ),
            ),
          ),
        ),
      ],
    );
  }
}


