import 'package:flutter/material.dart';
import 'package:food_log_app/components/pie_chart.dart';

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
          child: Text('real daily'),
        ),
        MyPieChart(5, 2, 1),
      ],
    );
  }
}
