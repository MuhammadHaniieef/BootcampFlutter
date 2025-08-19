import 'package:flutter/material.dart';
import 'models/user.dart';
import 'services/user_service.dart';
import 'detail_user_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late Future<List<User>> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = UserService.fetchUsers(page: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Page')),
      body: FutureBuilder<List<User>>(
        future: futureUsers,
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snap.hasError) {
            return Center(child: Text('Error: ${snap.error}'));
          }
          final users = snap.data ?? [];
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (_, i) {
              final u = users[i];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailUserPage(userId: u.id),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage(u.avatar)),
                    title: Text('${u.firstName} ${u.lastName}'),
                    subtitle: Text(u.email),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
