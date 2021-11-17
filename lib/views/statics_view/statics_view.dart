import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class StaticsView extends StatefulWidget {
  const StaticsView(this.selectedTabIndex);
  final int selectedTabIndex;

  @override
  State<StaticsView> createState() => _StaticsViewState();
}

class _StaticsViewState extends State<StaticsView> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Flutter": 5,
      "React": 3,
      "Xamarin": 2,
      "Ionic": 2,
    };
    return Card(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('${widget.selectedTabIndex}'),
                Container(
                  width: 300,
                  height: 300,
                  child: PieChart(dataMap: {
                    "Protein": 2,
                    "Fat": 3,
                    "Varb": 4,
                  }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
