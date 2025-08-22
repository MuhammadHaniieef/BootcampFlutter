import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'core/routes/app_pages.dart';
import 'core/routes/app_routes.dart';
import 'bindings/auth_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tugas 14 Routing GetX',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.getStarted,
      getPages: AppPages.pages,
      initialBinding: AuthBinding(),
    );
  }
}
