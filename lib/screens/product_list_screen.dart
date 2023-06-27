import 'package:abersoft_test_fe/controllers/product_controller.dart';
import 'package:abersoft_test_fe/widgets/card_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.find();
    productController.fetchProduct();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'Our Portofolio',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Best Product',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0),
              ),
              const SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 100.0,
                child: Obx(() {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productController.productList.length,
                    itemBuilder: (context, index) {
                      final product = productController.productList[index];
                      return CardProduct(imageUrl: product);
                    },
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
