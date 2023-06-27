import 'package:abersoft_test_fe/controllers/product_controller.dart';
import 'package:abersoft_test_fe/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardProduct extends StatelessWidget {
  final String imageUrl;
  CardProduct({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 145,
        height: 96,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: kCardColor),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ));
  }
}
