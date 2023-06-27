import 'package:abersoft_test_fe/common/constans.dart';
import 'package:http/http.dart' as http;

class LoginService {
  Future<bool> login(String username, String password) async {
    final response = await http.post(Uri.parse('$baseUrl/login'), body: {
      'username': username,
      'password': password,
    });

    if (response.statusCode == 200) {
      print(response.body);
      return true;
    } else {
      // Login gagal
      return false;
    }
  }
}
