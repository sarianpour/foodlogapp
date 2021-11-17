import 'package:flutter/material.dart';
import 'package:food_log_app/components/pie_chart.dart';

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
          child: Text('real month'),
        ),
        MyPieChart(3, 2, 4),
      ],
    );
  }
}
