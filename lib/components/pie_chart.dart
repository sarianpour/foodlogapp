import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChart extends StatelessWidget {
  MyPieChart(this.protein, this.carb, this.fat);
  double protein;
  double carb;
  double fat;

  @override
  Widget build(BuildContext context) {
    final gradientList = <List<Color>>[
      [
        Colors.yellow,
        Colors.yellow,
      ],
      [
        Colors.red,
        Colors.red,
      ],
      [
        Colors.brown,
        Colors.brown,
      ]
    ];
    return Container(
      width: 300,
      height: 300,
      child: PieChart(
        dataMap: {
          "Protein": protein,
          "Fat": carb,
          "Carb": fat,
        },
        chartType: ChartType.ring,
        ringStrokeWidth: 32,
        gradientList: gradientList,
        emptyColorGradient: [
          Color(0xff6c5ce7),
          Colors.blue,
        ],
        chartValuesOptions:
            ChartValuesOptions(showChartValuesInPercentage: true),
      ),
    );
  }
}
