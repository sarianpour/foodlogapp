import 'package:flutter/material.dart';
import 'package:food_log_app/components/pie_chart.dart';
import 'package:food_log_app/components/stacked_chart_daily.dart';

class StaticsTabDaily extends StatefulWidget {
  const StaticsTabDaily({Key? key}) : super(key: key);

  @override
  _StaticsTabDailyState createState() => _StaticsTabDailyState();
}

class _StaticsTabDailyState extends State<StaticsTabDaily> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          child: StackedChartDaily(),
        ),
        MyPieChart(5, 2, 1),
      ],
    );
  }
}
