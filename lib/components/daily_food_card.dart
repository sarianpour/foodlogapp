import 'package:flutter/material.dart';

class DailyFoodCard extends StatelessWidget {
  DailyFoodCard(
      this.picAdress1, this.picAdress2, this.picAdress3, this.date, this.cal);

  final String picAdress1;
  final String picAdress2;
  final String picAdress3;
  final String date;
  final String cal;

  @override
  Widget build(BuildContext context) {
    //
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/$picAdress1',
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/$picAdress2',
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/$picAdress3',
                width: 100,
                height: 100,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('$date'),
                Text('$cal Cal'),
                TextButton(
                  child: const Text('MORE'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
