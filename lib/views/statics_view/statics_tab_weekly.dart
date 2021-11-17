import 'package:flutter/material.dart';
import 'package:food_log_app/components/pie_chart.dart';
import 'package:food_log_app/components/stacked_chart_weekly.dart';

class StaticsTabWeekly extends StatefulWidget {
  const StaticsTabWeekly({Key? key}) : super(key: key);

  @override
  _StaticsTabWeeklyState createState() => _StaticsTabWeeklyState();
}

class _StaticsTabWeeklyState extends State<StaticsTabWeekly> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          child: StackedChartWeekly(),
        ),
        MyPieChart(4, 4, 3),
      ],
    );
  }
}
