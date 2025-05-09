import 'package:flutter/material.dart';
import 'models/task.dart';
import 'screens/home_screen.dart';

void main() => runApp(AsianCollegeTodoApp());

class AsianCollegeTodoApp extends StatelessWidget {
  const AsianCollegeTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AC APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0056b3),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF0056b3),
          primary: Color(0xFF0056b3),
          secondary: Color(0xFFFFD700),
      ),
      useMaterial3: true,
      ),
      home: AsianCollegeTodoApp(),
    );
  }
}
