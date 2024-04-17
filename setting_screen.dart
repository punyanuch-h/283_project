import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:profile/models/setting.dart';
import 'package:profile/widgets/avatar_card.dart';
import 'package:profile/widgets/setting_title.dart';
import 'package:profile/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

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
        onTap: (index) {
          // เพิ่มโค้ดที่ใช้สำหรับการแสดงหน้าจอที่เกี่ยวข้องกับแถบนำทางที่ถูกเลือก
          // ตัวอย่าง:
          if (index == 0) {
            // กำหนดการแสดงหน้าที่เกี่ยวข้องกับไอคอนแรก (search)
          } else if (index == 1) {
            // กำหนดการแสดงหน้าที่เกี่ยวข้องกับไอคอนที่สอง (home)
          } else if (index == 2) {
            // กำหนดการแสดงหน้าที่เกี่ยวข้องกับไอคอนที่สาม (profile)
          } else if (index == 3) {
            // กำหนดการแสดงหน้าที่เกี่ยวข้องกับไอคอนที่สี่ (confirmation_number)
          }
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 220, 187, 125), // สีแรก (ข้างบน)
              Color.fromRGBO(204, 235, 240, 1), // สีที่สอง (ข้างล่าง)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AvatarCard(),
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 10),
                  Column(
                    children: List.generate(
                      settings.length,
                      (index) => SettingTile(setting: settings[index]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
