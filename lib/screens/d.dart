import 'package:flutter/material.dart';
import 'package:phrase2/utilities/colors.dart';

class discoveryScreen extends StatefulWidget {
  const discoveryScreen({Key? key}) : super(key: key);

  @override
  State<discoveryScreen> createState() => _discoveryScreen();
}

class _discoveryScreen extends State<discoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme_blue,
      body: Column(
        children: [
          // ส่วนหัว
          Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets\images\profile.jpg"),
              ),
              SizedBox(
                width: 5,
              ),
              RichText(text: TextSpan(text: "Ahoy! Captain",style: TextStyle(color: Colors.black, fontSize: 16), children: [
                TextSpan(
                  text: "Jenny Wilson",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  )
                )
              ]))
            ],
          ),

          // แมพเล็กสถานที่เราเลือกเป็น home (ข้ามเพราะเค้าทำเป็น search)

        ],
      ),
    );
  }
}
