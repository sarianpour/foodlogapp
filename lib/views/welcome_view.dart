import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'FOOD LOG APP',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                letterSpacing: 8.5),
          ),
          SizedBox(
            width: 300,
            child: Text(
              'DETECT CALORIES AND NUTRIENTS IN YOUR FOOD JUST BY A PICTURE DIGITAL HEALTH .INC',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 30),
          new ElevatedButton(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
          new ElevatedButton(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
