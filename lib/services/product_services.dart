import 'dart:convert';

import 'package:flutter_with_sanctum/models/products.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<Product> fetchProducts() async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:8000/api/products'),
    );

    Map<String, dynamic> products = {};

    if (response.statusCode == 200) {
      // List<dynamic> tests = await jsonDecode(response.body);
      // print(tests);
      // print(tests.runtimeType);

      var test = (jsonDecode(response.body) as List)
          .map((dynamic e) => e as Map<String, dynamic>)
          .toList();
      // print(test.runtimeType);

      for (var i = 0; i < test.length; i++) {
        products.addAll(test[i]);
      }

      print(products);

      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Products');
    }
  }
}
