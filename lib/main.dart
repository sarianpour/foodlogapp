import 'package:flutter/material.dart';
import 'package:food_log_app/views/login_view.dart';
import 'package:food_log_app/views/navigation_view.dart';
import 'package:food_log_app/views/register_view.dart';
import 'package:food_log_app/views/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new WelcomeView(),
        '/loginview': (BuildContext context) => new LoginView(),
        '/registerview': (BuildContext context) => new RegisterView(),
        '/navigationview': (BuildContext context) => new NavigationView()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/navigationview',
    );
  }
}
