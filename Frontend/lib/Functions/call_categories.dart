import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> getCategories() async {
 final url = Uri.parse('http://localhost:3000/categories');
 final response = await http.get(
  url,
  headers: {'Content-type': 'application/json'},
 );
  if (response.statusCode == 200) {
   final data = jsonDecode(response.body);
   return data;
}
throw Exception('Error al obtener categorías');
}

