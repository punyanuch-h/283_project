import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ticket/bottom_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 225, 204, 141),
        color: Color.fromARGB(255, 88, 139, 138),
        animationDuration: const Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.search, size: 26, color: Colors.white),
          Icon(Icons.home, size: 26, color: Colors.white),
          Icon(Icons.person,
              size: 26, color: Colors.white), // เพิ่มไอคอน 'Profile' ที่นี่
          Icon(Icons.confirmation_number, size: 26, color: Colors.white),
        ],
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  static const List<Widget> _widgetOptions = <Widget>[
    // เอาออกเพื่อไม่แสดงข้อความชื่อหน้า
    SizedBox(),
    SizedBox(),
    SizedBox(),
    SizedBox(), // จำเป็นต้องเพิ่ม SizedBox อีกตัวเพื่อทำให้ index ที่ 3 ไม่มีข้อผิดพลาด
  ];
}
