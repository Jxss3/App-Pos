import 'package:flutter/material.dart';

class Inventario extends StatefulWidget {
  const Inventario({super.key});

  @override
  State<Inventario> createState() => _InventarioState();
}

class _InventarioState extends State<Inventario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Inventario"),
          ),
        ],
      ),
    );
  }
}