import 'package:flutter/material.dart';
import 'package:messenger_lite/home_screen.dart';
import 'package:messenger_lite/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryIconTheme: IconThemeData(
          color: Colors.blue,
        ),
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        HomeScreen.id: (BuildContext context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
