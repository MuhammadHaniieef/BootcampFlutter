import 'package:flutter/material.dart';
import 'pages/settings/settings_page.dart';
import 'pages/settings/profile_settings_page.dart';
import 'pages/settings/news_settings_page.dart';
import 'pages/settings/notifications_page.dart';
import 'pages/settings/subscriptions_page.dart';
import 'pages/settings/bug_report_page.dart';
import 'pages/settings/share_app_page.dart';

class AppRoutes {
  static const settings       = '/settings';
  static const profile        = '/settings/profile';
  static const news           = '/settings/news';
  static const notifications  = '/settings/notifications';
  static const subscriptions  = '/settings/subscriptions';
  static const bugReport      = '/settings/bug-report';
  static const share          = '/settings/share';

  static Route<dynamic> onGenerateRoute(RouteSettings s) {
    Widget page;
    switch (s.name) {
      case settings:      page = const SettingsPage(); break;
      case profile:       page = const ProfileSettingsPage(); break;
      case news:          page = const NewsSettingsPage(); break;
      case notifications: page = const NotificationsPage(); break;
      case subscriptions: page = const SubscriptionsPage(); break;
      case bugReport:     page = const BugReportPage(); break;
      case share:         page = const ShareAppPage(); break;
      default:
        page = const Scaffold(body: Center(child: Text('Route not found')));
    }
    return PageRouteBuilder(
      settings: s,
      transitionDuration: const Duration(milliseconds: 280),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, a, __, child) {
        final tween = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
            .chain(CurveTween(curve: Curves.easeOutCubic));
        return SlideTransition(position: a.drive(tween), child: child);
      },
    );
  }
}
