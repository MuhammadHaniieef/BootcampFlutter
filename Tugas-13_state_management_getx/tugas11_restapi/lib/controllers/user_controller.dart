import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/user.dart';

class UserController extends GetxController {
  static const String _baseUrl = 'https://reqres.in/api';
  static const int _defaultPage = 2;

  /// ======= STATE (List) =======
  final users = <User>[].obs;
  final isLoading = false.obs;
  final error = RxnString();

  /// ======= STATE (Detail) =======
  final selectedUser = Rxn<User>();
  final isDetailLoading = false.obs;
  final detailError = RxnString();

  @override
  void onInit() {
    super.onInit();
    // Muat data awal
    fetchUsers(page: _defaultPage);
  }

  /// Ambil list user
  Future<void> fetchUsers({int? page}) async {
    // Tampilkan spinner penuh hanya jika belum ada data sama sekali
    isLoading.value = users.isEmpty;
    error.value = null;

    try {
      final uri = Uri.parse('$_baseUrl/users?page=${page ?? _defaultPage}');
      final res = await http.get(uri).timeout(const Duration(seconds: 10));

      if (res.statusCode != 200) {
        throw Exception('HTTP ${res.statusCode}');
      }

      final body = jsonDecode(res.body) as Map<String, dynamic>;
      final list = (body['data'] as List)
          .map<User>((e) => User.fromJson(e as Map<String, dynamic>))
          .toList();

      users.assignAll(list);
    } on TimeoutException {
      error.value = 'Timeout saat menghubungi server';
      // Jangan clear users, agar UI tetap menampilkan data terakhir
    } catch (e) {
      error.value = e.toString();
      // Jangan clear users, agar UI tetap menampilkan data terakhir
    } finally {
      isLoading.value = false;
    }
  }

  /// Ambil detail user
  Future<void> fetchUserDetail(int id) async {
    isDetailLoading.value = true;
    detailError.value = null;

    try {
      final uri = Uri.parse('$_baseUrl/users/$id');
      final res = await http.get(uri).timeout(const Duration(seconds: 10));

      if (res.statusCode != 200) {
        throw Exception('HTTP ${res.statusCode}');
      }

      final body = jsonDecode(res.body) as Map<String, dynamic>;
      selectedUser.value = User.fromJson(body['data'] as Map<String, dynamic>);
    } on TimeoutException {
      detailError.value = 'Timeout saat mengambil detail user';
    } catch (e) {
      detailError.value = e.toString();
    } finally {
      isDetailLoading.value = false;
    }
  }

  /// Util opsional
  Future<void> retry() => fetchUsers(page: _defaultPage);

  void clearDetail() {
    selectedUser.value = null;
    detailError.value = null;
  }
}
