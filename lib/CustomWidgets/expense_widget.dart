import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:invoice/CustomWidgets/customtext.dart';
import 'package:invoice/utils/images.dart';

class IncomeExpensesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(Images.savemoney, height: 24, width: 24),
                SizedBox(width: 8),
                Text(
                  "Income & Expenses",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                print("Selected: $value");
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(value: "Option 1", child: Poppins(text: "Monthly",fontWeight: FontWeight.w400,fontSize: 12,color: Get.theme.secondaryHeaderColor,)),
                PopupMenuItem(value: "Option 2", child: Poppins(text: "Half yearly",fontWeight: FontWeight.w400,fontSize: 12,color: Get.theme.secondaryHeaderColor,)),
                PopupMenuItem(value: "Option 3", child: Poppins(text: "Yearly",fontWeight: FontWeight.w400,fontSize: 12,color: Get.theme.secondaryHeaderColor,)),
              ],
              child: Image.asset(Images.filter, height: 24, width: 24),
            ),
          ],
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 300,
          child: BarChart(
            BarChartData(
              barGroups: _generateBarGroups(),
              titlesData: FlTitlesData(
                topTitles: AxisTitles(drawBelowEverything: false),
                rightTitles: AxisTitles(drawBelowEverything: false),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    getTitlesWidget: (value, meta) {
                      final labels = [
                        "30 Nov", "29 Nov", "28 Nov", "27 Nov", "26 Nov",
                        "25 Nov", "24 Nov", "23 Nov", "22 Nov", "21 Nov"
                      ];

                      // Ensure value is within bounds
                      if (value.toInt() < 0 || value.toInt() >= labels.length) {
                        return SizedBox();
                      }

                      List<String> parts = labels[value.toInt()].split(" ");
                      return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(parts[0], style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)), // Day
                            Text(parts[1], style: TextStyle(fontSize: 10)), // Month
                          ],
                        ),
                      );
                    },
                    interval: 1,
                  ),
                ),
              ),
              borderData: FlBorderData(show: false),
              gridData: FlGridData(show: true),
            ),
          ),
        ),
        SizedBox(height: 16),
        Row(spacing: 20,children: [
          Expanded(flex: 1,child: Container(padding: EdgeInsets.symmetric(vertical: 5),decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(8))),child: Column(children: [Poppins(text: 'Total Income',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,),Poppins(text: '₹ 250.00',fontSize: 16,fontWeight: FontWeight.w700,color: Get.theme.scaffoldBackgroundColor,)],),)),
          Expanded(flex: 1,child: Container(padding: EdgeInsets.symmetric(vertical: 5),decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(8))),child: Column(children: [Poppins(text: 'Total Income',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.scaffoldBackgroundColor,),Poppins(text: '₹ 20.00',fontSize: 16,fontWeight: FontWeight.w700,color: Get.theme.scaffoldBackgroundColor,)],))),

        ],),


      ],
    );
  }

  List<BarChartGroupData> _generateBarGroups() {
    List<double> incomes = [5000, 10000, 2000, 12000, 10000, 6000, 7000, 8000, 21000, 15000];
    List<double> expenses = [500, 3000, 4000, 1000, 500, 3000, 4000, 2500, 1000, 3000];

    return List.generate(incomes.length, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(toY: incomes[index], color: Colors.green, width: 8),
          BarChartRodData(toY: expenses[index], color: Colors.red, width: 8),
        ],
        barsSpace: 4, // Improved spacing
      );
    });
  }
}
