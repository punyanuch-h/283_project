import 'package:flutter/material.dart';
// import 'package:phrase2/screens/discovery.dart'; // DiscoveryPage
import 'screens/ticket.dart'; // TicketPage
// import 'package:phrase2/screens/detail.dart'; //DetailsPage
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TicketPage(), 
    );
  }
}