import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/user_controller.dart';
import 'detail_user_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.find<UserController>();

    return Scaffold(
      appBar: AppBar(title: const Text('User Page (GetX)')),
      body: Obx(() {
        // Spinner penuh hanya saat belum ada data sama sekali
        if (c.isLoading.value && c.users.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        // Saat error: tampilkan snackbar + tombol retry,
        // tapi TETAP render list terakhir kalau ada.
        if (c.error.value != null && c.users.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Gagal memuat data'),
                const SizedBox(height: 8),
                Text(
                  c.error.value!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () => c.fetchUsers(page: 2),
                  child: const Text('Coba lagi'),
                ),
              ],
            ),
          );
        }

        final users = c.users;

        return RefreshIndicator(
          onRefresh: () => c.fetchUsers(page: 2),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: users.length,
            itemBuilder: (_, i) {
              final u = users[i];
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(u.avatar)),
                title: Text('${u.firstName} ${u.lastName}'),
                subtitle: Text(u.email),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => Get.to(() => DetailUserPage(userId: u.id)),
              );
            },
          ),
        );
      }),
    );
  }
}
