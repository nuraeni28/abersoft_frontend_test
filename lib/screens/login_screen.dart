import 'package:abersoft_test_fe/controllers/login_controller.dart';
import 'package:abersoft_test_fe/widgets/button.dart';
import 'package:abersoft_test_fe/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginController _loginController = Get.find();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 104.0, horizontal: 79.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 253.0,
                height: 53.0,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Center(
              child: TextFieldCustom(
                labelText: 'Username',
                controller: _usernameController,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Center(
              child: TextFieldCustom(
                controller: _passwordController,
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Center(
              child: GestureDetector(
                onTap: _loginController.isLoading.value
                    ? null
                    : (() {
                        _loginController.login(
                            _usernameController.text, _passwordController.text);
                      }),
                child: ButtonCustom(
                  label: 'LOGIN',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
