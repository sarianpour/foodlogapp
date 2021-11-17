import 'package:flutter/material.dart';
import 'package:food_log_app/components/pie_chart.dart';

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
          child: Text('real week'),
        ),
        MyPieChart(4, 4, 3),
      ],
    );
  }
}
