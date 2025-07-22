import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const QRCodeApp());
}

class QRCodeApp extends StatelessWidget {
  const QRCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
