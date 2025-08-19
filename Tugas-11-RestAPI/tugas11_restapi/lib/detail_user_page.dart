import 'package:flutter/material.dart';
import 'models/user.dart';
import 'services/user_service.dart';

class DetailUserPage extends StatefulWidget {
  final int userId;
  const DetailUserPage({super.key, required this.userId});

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {
  late Future<User> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = UserService.fetchUserDetail(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail User Page')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder<User>(
          future: futureUser,
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snap.hasError) {
              return Center(child: Text('Error: ${snap.error}'));
            }
            final u = snap.data!;
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
          },
        ),
      ),
    );
  }
}
