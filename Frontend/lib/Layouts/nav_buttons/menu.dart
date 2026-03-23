import 'package:app_pos/Functions/add_categories.dart';
import 'package:app_pos/Functions/call_categories.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                FutureBuilder(
                  future: getCategories(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }
                    final categories = snapshot.data!;

                    return SingleChildScrollView(
                      child: Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          ...categories.map((category) {
                            return ElevatedButton(
                              onPressed: () {
                                print(category["name"]);
                              },
                              child: Text(category["name"]),
                            );
                          }),

                          ElevatedButton(
                            onPressed: () async {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Color(0xFF1e1e27),
                                    title: const Text(
                                      "Agregar Categoria",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    content: TextField(
                                       controller: controller,
                                      style: const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        hintText: "Nombre",
                                        hintStyle: TextStyle(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Cancelar",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () async {
                                          String name = controller.text;

                                          await addCategories(name);
                                          setState(() {});

                                          Navigator.pop(context);

                                        },
                                        child: const Text(
                                          "Agregar",
                                          style: TextStyle(
                                            color: Color(0xFF17171C),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Text("+"),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
