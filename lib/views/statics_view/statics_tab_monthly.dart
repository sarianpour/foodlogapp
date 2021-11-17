import 'package:flutter/material.dart';
import 'package:food_log_app/components/pie_chart.dart';
import 'package:food_log_app/components/stacked_chart_monthly.dart';

class StaticsTabMonthly extends StatefulWidget {
  const StaticsTabMonthly({Key? key}) : super(key: key);

  @override
  _StaticsTabMonthlyState createState() => _StaticsTabMonthlyState();
}

class _StaticsTabMonthlyState extends State<StaticsTabMonthly> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          child: StackedChartMonthly(),
        ),
        MyPieChart(3, 2, 4),
      ],
    );
  }
}
