import 'package:advance_ui1/screens/DatePicker.dart';
import 'package:advance_ui1/screens/TimePickerPage.dart';
import 'package:advance_ui1/screens/dialog.dart';
import 'package:advance_ui1/screens/home_page.dart';
import 'package:advance_ui1/screens/iosDatePicker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomePage(),
        '/date':(context)=>DateTimePage(),
        '/time':(context)=>TimePage(),
        '/dialog':(context)=>DialogScreen(),
        '/ios':(context)=>IosDatePicker(),
      },
    );
  }
}
