import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(const Quiz2App());

class Quiz2App extends StatelessWidget {
  const Quiz2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF1E1F22),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.settings,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
