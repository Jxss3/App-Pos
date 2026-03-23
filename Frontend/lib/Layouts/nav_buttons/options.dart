import 'package:flutter/material.dart';

class Opciones extends StatefulWidget {
  const Opciones({super.key});

  @override
  State<Opciones> createState() => _OpcionesState();
}

class _OpcionesState extends State<Opciones> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Opciones"),
          ),
        ],
      ),
    );
  }
}