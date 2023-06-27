import 'package:abersoft_test_fe/common/constans.dart';
import 'package:abersoft_test_fe/models/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static Future<List<String>> fetchProducts() async {
    try {
      final response =
          await http.get(Uri.parse('$baseUrl/products'), headers: headers);
      debugPrint('halo');
      // print('Response Body: ${response.body}');
      if (response.statusCode == 200) {
        final products = productsFromJson(response.body);
        final bestProductImages =
            products.bestProduct.map((product) => product.imageUrl).toList();

        return bestProductImages;
      } else {
        throw Exception('Failed to fetch best products');
      }
    } catch (e) {
      throw Exception('Failed to fetch best products: $e');
    }
  }
}
