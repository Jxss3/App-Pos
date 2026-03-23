import 'package:flutter/material.dart';

class Ventas extends StatefulWidget {
  const Ventas({super.key});

  @override
  State<Ventas> createState() => _VentasState();
}

class _VentasState extends State<Ventas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Ventas"),
          ),
        ],
      ),
    );
  }
}