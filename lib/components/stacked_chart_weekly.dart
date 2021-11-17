import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StackedChartWeekly extends StatefulWidget {
  @override
  _StackedChartWeekly createState() => _StackedChartWeekly();
}

class _StackedChartWeekly extends State<StackedChartWeekly> {
  late List<ExpenseData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SfCartesianChart(
        legend: Legend(isVisible: true),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
          StackedColumnSeries<ExpenseData, String>(
              dataSource: _chartData,
              xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
              yValueMapper: (ExpenseData exp, _) => exp.breakfast,
              name: 'Protein',
              color: Colors.red,
              markerSettings: MarkerSettings(
                isVisible: true,
              )),
          StackedColumnSeries<ExpenseData, String>(
              dataSource: _chartData,
              xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
              yValueMapper: (ExpenseData exp, _) => exp.lunch,
              name: 'Fat',
              color: Colors.yellow,
              markerSettings: MarkerSettings(
                isVisible: true,
              )),
          StackedColumnSeries<ExpenseData, String>(
              dataSource: _chartData,
              xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
              yValueMapper: (ExpenseData exp, _) => exp.dinner,
              name: 'Carb',
              color: Colors.brown,
              markerSettings: MarkerSettings(
                isVisible: true,
              )),
        ],
        primaryXAxis: CategoryAxis(),
      ),
    ));
  }

  List<ExpenseData> getChartData() {
    final List<ExpenseData> chartData = [
      ExpenseData('S', 260, 320, 360),
      ExpenseData('M', 270, 400, 350),
      ExpenseData('T', 200, 360, 300),
      ExpenseData('W', 150, 350, 320),
      ExpenseData('T', 180, 300, 400),
      ExpenseData('F', 300, 350, 430),
      ExpenseData('S', 260, 380, 350),
    ];
    return chartData;
  }
}

class ExpenseData {
  ExpenseData(this.expenseCategory, this.breakfast, this.lunch, this.dinner);
  final String expenseCategory;
  final num breakfast;
  final num lunch;
  final num dinner;
}
