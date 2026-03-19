import 'package:flutter/material.dart';

class Column3 extends StatefulWidget {
  const Column3({super.key});

  @override
  State<Column3> createState() => _Column3State();
}

class _Column3State extends State<Column3> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: const Color(0xFF1e1e27),
        height: double.infinity,
        child: Text(
          "",
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
