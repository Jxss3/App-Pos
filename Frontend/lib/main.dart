import 'package:app_pos/Layouts/main_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
      backgroundColor: const Color(0xFF000000),
      
        body: MainLayout()
      ),
    );
  }
}
