import 'package:flutter/material.dart';
import 'package:wender1/page/login_page.dart';
import 'package:wender1/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 116, 129, 152),
      ),
      home: HomePage(), // เปลี่ยนจาก LoginPage() เป็น HomePage()
    );
  }
}
