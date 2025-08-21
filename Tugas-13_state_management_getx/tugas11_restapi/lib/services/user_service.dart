import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class UserService {
  static const _base = 'https://reqres.in/api';

  static Future<List<User>> fetchUsers({int page = 2}) async {
    final res = await http.get(Uri.parse('$_base/users?page=$page'));
    if (res.statusCode != 200) {
      throw Exception('Failed: ${res.statusCode}');
    }
    final body = jsonDecode(res.body) as Map<String, dynamic>;
    final list = (body['data'] as List).map((e) => User.fromJson(e)).toList();
    return list;
  }

  static Future<User> fetchUserDetail(int id) async {
    final res = await http.get(Uri.parse('$_base/users/$id'));
    if (res.statusCode != 200) {
      throw Exception('Failed: ${res.statusCode}');
    }
    final body = jsonDecode(res.body) as Map<String, dynamic>;
    return User.fromJson(body['data']);
  }
}
