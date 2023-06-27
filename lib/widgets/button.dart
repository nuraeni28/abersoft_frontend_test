
import 'package:abersoft_test_fe/shared/theme.dart';
import 'package:flutter/widgets.dart';

class ButtonCustom extends StatelessWidget {
  String label;

  ButtonCustom({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 262,
      height: 37,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        label,
        style: const TextStyle(color: kWhiteColor),
      )),
    );
  }
}
