import 'package:flutter/material.dart';
import 'package:food_log_app/views/login_view.dart';
import 'package:food_log_app/views/register_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome!'),
      ),
      backgroundColor: Colors.blue[900],
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'FOOD LOG APP',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  letterSpacing: 8.5),
            ),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    'DETECT CALORIES AND NUTRIENTS IN YOUR FOOD JUST BY A PICTURE DIGITAL HEALTH .INC',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                new ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                  child: const Text('    LOGIN   '),
                ),
                const SizedBox(height: 16),
                new ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterView()),
                    );
                  },
                  child: const Text('REGISTER'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
