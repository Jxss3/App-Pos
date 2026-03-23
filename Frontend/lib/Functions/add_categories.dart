import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> addCategories(String name) async {
  final url = Uri.parse('http://localhost:3000/categories');
 {
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name}),
  );

    if (response.statusCode == 200) {
      print('Categoría agregada exitosamente');
    } else {
      print('Error al agregar categoría: ${response.statusCode}');
    }
  }
}