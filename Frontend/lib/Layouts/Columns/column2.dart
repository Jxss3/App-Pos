import 'package:app_pos/Layouts/nav_buttons/menu.dart';
import 'package:app_pos/Layouts/nav_buttons/ventas.dart';
import 'package:app_pos/Layouts/nav_buttons/inventario.dart';
import 'package:app_pos/Layouts/nav_buttons/opciones.dart';

import 'package:flutter/material.dart';

class Column2 extends StatelessWidget {
  final String? selectedNav;
  const Column2({super.key, required this.selectedNav});

  @override
 Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(
        color: const Color(0xFF17171C),
        height: double.infinity,
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "Buscar...",
                  fillColor: Color(0xFFe2e2e2),
                  filled: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                if (selectedNav == "Menu") ...[
                  Menu(),
                ] else if (selectedNav == "Ventas") ...[
                  Ventas(),
                ] else if (selectedNav == "Inventario") ...[
                  Inventario(),
                ]else if (selectedNav == "Opciones") ...[
                  Opciones(),
                ] else ...[
                  const Text(
                    "Selecciona una opción del menú",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ]
              ],
            )
          ],
        )
      ),
    );
  }
}