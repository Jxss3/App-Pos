import 'package:app_pos/Functions/AddCategories.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    TextField(controller: controller);
    return Container(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Row(
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Agregar Categoria"),
                        content: TextField(
                          controller: controller,
                          decoration: InputDecoration(hintText: "Ej: Bebidas"),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancelar"),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              String name = controller.text;

                              await addCategory(name);

                              Navigator.pop(context);
                            },
                            child: const Text("Agregar"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Agregar Categoria"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
