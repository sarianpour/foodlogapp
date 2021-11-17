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
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/$picAdress1',
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/$picAdress2',
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/$picAdress3',
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
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
