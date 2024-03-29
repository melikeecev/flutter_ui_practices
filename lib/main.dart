import 'package:flutter/material.dart';
import 'package:ui_practices/hotel_booking_app/booking_home_page.dart';
import 'package:ui_practices/housing_app/housing_home_page.dart';
import 'package:ui_practices/task_management_app/task_management_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UIs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  TaskManagementHomePage(),
    );
  }
}

