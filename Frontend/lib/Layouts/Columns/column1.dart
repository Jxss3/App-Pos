import 'package:flutter/material.dart';

class Column1 extends StatefulWidget {
  final String? selectedNav;
  final Function(String) onItemSelected;
  const Column1({
    super.key,
    required this.onItemSelected,
    required this.selectedNav,
  });

  @override
  State<Column1> createState() => _Column1State();
}

class _Column1State extends State<Column1> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.only(top: 20.0),
        color: const Color(0xFF1e1e27),
        height: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "SIUMAI",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 1, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "POS",
                      style: const TextStyle(
                        color: Color(0xFFe2e2e2),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget.selectedNav == "Menu"
                          ? const Color.fromARGB(255, 255, 1, 1)
                          : const Color(0x00FF0000),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.home, color: Colors.white),
                      title: const Text(
                        "Menu",
                        style: TextStyle(color: Color(0xFFe2e2e2)),
                      ),

                      onTap: () {
                        widget.onItemSelected("Menu");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget.selectedNav == "Ventas"
                          ? const Color.fromARGB(255, 255, 1, 1)
                          : const Color(0x00FF0000),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Ventas",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        widget.onItemSelected("Ventas");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget.selectedNav == "Inventario"
                          ? const Color.fromARGB(255, 255, 1, 1)
                          : const Color(0x00FF0000),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.inventory, color: Colors.white),
                      title: const Text(
                        "Inventario",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        widget.onItemSelected("Inventario");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget.selectedNav == "Opciones"
                          ? const Color.fromARGB(255, 255, 1, 1)
                          : const Color(0x00FF0000),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.settings, color: Colors.white),
                      title: const Text(
                        "Opciones",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        widget.onItemSelected("Opciones");
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.table_restaurant),
                  ),
                ),
              ],
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: const Text(
                "© 2026 EFFICORDERS App",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
