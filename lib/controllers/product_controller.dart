import 'package:abersoft_test_fe/models/products.dart';
import 'package:abersoft_test_fe/services/get_product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<String> productList = <String>[].obs;

  Future<void> fetchProduct() async {
    try {
      productList.value = await ProductService.fetchProducts();
    } catch (e) {
      // Tangani kesalahan jika diperlukan
      print('Error: $e');
    }
  }
}
