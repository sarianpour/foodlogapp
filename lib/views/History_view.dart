import 'package:flutter/material.dart';
import 'package:food_log_app/components/daily_food_card.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DailyFoodCard(),
        DailyFoodCard(),
        DailyFoodCard(),
        DailyFoodCard(),
        DailyFoodCard(),
        DailyFoodCard(),
        DailyFoodCard(),
      ],
    );
  }
}
