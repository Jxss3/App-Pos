import 'package:app_pos/Layouts/nav_buttons/menu.dart';
import 'package:app_pos/Layouts/nav_buttons/sales.dart';
import 'package:app_pos/Layouts/nav_buttons/inventory.dart';
import 'package:app_pos/Layouts/nav_buttons/options.dart';

import 'package:flutter/material.dart';

class Column2 extends StatelessWidget {
  final String? selectedNav;
  const Column2({super.key, required this.selectedNav});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        color: const Color(0xFF17171C),
        height: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                const Icon(Icons.mic, color: Colors.white),
              ],
            ),

            const SizedBox(height: 20),

            Expanded(
              child: Column(
                children: [
                  if (selectedNav == "Menu") ...[
                    Menu(),
                  ] else if (selectedNav == "Ventas") ...[
                    Ventas(),
                  ] else if (selectedNav == "Inventario") ...[
                    Inventario(),
                  ] else if (selectedNav == "Opciones") ...[
                    Opciones(),
                  ] else ...[
                    Menu(),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
