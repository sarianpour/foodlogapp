import 'package:flutter/material.dart';

class DailyFoodCard extends StatelessWidget {
  const DailyFoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/1.jpg',
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/2.jpg',
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/3.jpg',
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
                Text('Oct 2'),
                Text('1700 Cal'),
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
