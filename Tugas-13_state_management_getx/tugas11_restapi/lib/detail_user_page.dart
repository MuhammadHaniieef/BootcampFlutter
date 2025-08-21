import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/user_controller.dart';

class DetailUserPage extends StatelessWidget {
  final int userId;
  const DetailUserPage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final c = Get.find<UserController>();

    // Trigger fetch detail saat masuk halaman
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (c.selectedUser.value?.id != userId && !c.isDetailLoading.value) {
        c.fetchUserDetail(userId);
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Detail User (GetX)')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Obx(() {
          if (c.isDetailLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          if (c.detailError.value != null) {
            return Center(child: Text('Error: ${c.detailError.value}'));
          }
          final u = c.selectedUser.value;
          if (u == null) return const SizedBox.shrink();
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(radius: 44, backgroundImage: NetworkImage(u.avatar)),
              const SizedBox(height: 16),
              Text('${u.firstName} ${u.lastName}',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(u.email, style: Theme.of(context).textTheme.bodyMedium),
            ],
          );
        }),
      ),
    );
  }
}
