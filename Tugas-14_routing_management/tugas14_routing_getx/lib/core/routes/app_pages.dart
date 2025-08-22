import 'package:get/get.dart';
import '../../pages/get_started_page.dart';
import '../../pages/login_page.dart';
import '../../pages/register_page.dart';
import '../../pages/home_page.dart';
import '../../bindings/auth_binding.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: Routes.getStarted,
      page: () => const GetStartedPage(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: AuthBinding(),
    ),
  ];
}
