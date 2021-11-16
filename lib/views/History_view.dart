import 'package:flutter/material.dart';
import 'package:food_log_app/components/daily_food_card.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DailyFoodCard('1.jpg', '2.jpg', '3.jpg', 'Oct 2', '1720'),
        DailyFoodCard('4.jpg', '5.jpg', '6.jpg', 'Oct 1', '1330'),
        DailyFoodCard('7.jpg', '8.jpg', '9.jpg', 'Sep 30', '2200'),
        DailyFoodCard('10.jpg', '11.jpg', '12.jpg', 'Sep 29', '2160'),
        DailyFoodCard('13.jpg', '14.jpg', '15.jpg', 'Sep 28', '1960'),
      ],
    );
  }
}
