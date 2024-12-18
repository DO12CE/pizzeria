import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pizza.dart';

class PizzeriaService {
  final String baseUrl = "http://10.0.2.2/api/pizzas";

  Future<List<Pizza>> fetchPizzas() async {
    //  final response = await http.get(Uri.parse(baseUrl));
    List<Pizza> list = [];

    try{
      final response = await http.get(Uri.parse('${baseUrl}'));

    if (response.statusCode == 200) {
      var json = jsonDecode(utf8.decode(response.bodyBytes));
      for (final value in json){
        list.add(Pizza.fromJson(value));
      }
    }
    else{ 
    //   final List<dynamic> json = jsonDecode(response.body);
    //   return json.map((e) => Pizza.fromJson(e)).toList();
    // } else {
      throw Exception("Impossible de récuperer les pizzas");
    }
  }
  catch(e){ throw e; }
  return list;
}
}
