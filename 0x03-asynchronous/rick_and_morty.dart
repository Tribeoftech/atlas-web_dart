import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character/'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      for (var character in jsonData['results']) {
        print(character['name']);
      }
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error caught: $e');
  }
}