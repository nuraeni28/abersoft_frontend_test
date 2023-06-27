import 'package:abersoft_test_fe/shared/theme.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  String labelText;
  TextEditingController controller;

  TextFieldCustom(
      {super.key, required this.labelText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 262,
      height: 37,
      decoration: BoxDecoration(
        color: kWhiteColor,
        border: Border.all(color: kGreyColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          label: Center(child: Text(labelText)),
          fillColor: kWhiteColor,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
