import 'package:finance_assistant/screens/home.dart';
import 'package:finance_assistant/screens/homescreen.dart';
import 'package:finance_assistant/screens/reportsscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFFF7F7F7),
        bottomAppBarColor: Colors.white,
        appBarTheme: AppBarTheme(foregroundColor: Colors.black),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black),
        ),
      ),
      initialRoute: Homescreen.id,
      routes: {
        home_screen.id: (context) => home_screen(),
        Reportsscreen.id: (context) => Reportsscreen(),
      }
    );
  }
}

