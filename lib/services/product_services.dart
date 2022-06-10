import 'dart:convert';

import 'package:flutter_with_sanctum/models/products.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<List<dynamic>> fetchProducts() async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:8000/api/products'),
    );

    if (response.statusCode == 200) {
      var _products = jsonDecode(response.body);

      print(_products);
      var _temp = [];
      for (var i = 0; i < _products.length; i++) {
        // print(_products[i]);
        _temp.add(_products[i]);
      }
      print(_temp);
      return _temp;
    } else {
      throw Exception('Failed to load Products');
    }
  }
}
