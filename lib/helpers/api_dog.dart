import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/dog_model.dart';

class DogApi {
  static Future<DogModel> getRandomDog() async {
    final url = Uri.parse('https://dog.ceo/api/breeds/image/random');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return DogModel.fromJson(json);
    } else {
      throw Exception("Error al cargar imagen de perro");
    }
  }
}
