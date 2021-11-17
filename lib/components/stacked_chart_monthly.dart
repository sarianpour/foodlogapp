import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StackedChartMonthly extends StatefulWidget {
  @override
  _StackedChartMonthly createState() => _StackedChartMonthly();
}

class _StackedChartMonthly extends State<StackedChartMonthly> {
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
      ExpenseData('w1', 4460, 8120, 8160),
      ExpenseData('w2', 4470, 4200, 8150),
      ExpenseData('w3', 4400, 7160, 8100),
      ExpenseData('w4', 2850, 8150, 8120),
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
