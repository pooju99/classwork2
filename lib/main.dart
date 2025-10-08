import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(PoojaVeganKitchenApp());
}

class PoojaVeganKitchenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pooja's Vegan Kitchen",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
