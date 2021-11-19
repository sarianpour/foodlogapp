import 'package:flutter/material.dart';
import 'package:food_log_app/components/pie_chart.dart';
import 'package:food_log_app/components/stacked_chart_daily.dart';
import 'package:food_log_app/views/statics_view/statics_tab_daily.dart';
import 'package:food_log_app/views/statics_view/statics_tab_monthly.dart';
import 'package:food_log_app/views/statics_view/statics_tab_weekly.dart';
import 'package:pie_chart/pie_chart.dart';

class StaticsView extends StatefulWidget {
  const StaticsView(this.selectedTabIndex);
  final int selectedTabIndex;

  @override
  State<StaticsView> createState() => _StaticsViewState();
}

class _StaticsViewState extends State<StaticsView> {
  List<Widget> tabs = [
    StaticsTabDaily(),
    StaticsTabWeekly(),
    StaticsTabMonthly()
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          tabs[widget.selectedTabIndex],
        ],
      ),
    );
  }
}
