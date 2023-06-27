import 'package:abersoft_test_fe/screens/product_list_screen.dart';
import 'package:abersoft_test_fe/services/login_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginService _loginService = LoginService();

  RxBool isLoading = false.obs;

  Future<void> login(String username, String password) async {
    try {
      isLoading.value = true;
      final result = await _loginService.login(username, password);
      if (result) {
        Get.offAll( ProductListScreen());
      } else {}
    } finally {
      isLoading.value = false;
    }
  }
}
