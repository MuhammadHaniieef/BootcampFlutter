import 'package:flutter/material.dart';
import '../../routes.dart';
import '../../widgets/setting_tile.dart';
import '../../widgets/round_icon_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                RoundIconButton(icon: Icons.menu_rounded, onTap: () {}),
                const Spacer(),
                RoundIconButton(icon: Icons.search, onTap: () {}),
              ]),
              const SizedBox(height: 20),
              const Text('Settings', style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.w800, color: Colors.white)),
              const SizedBox(height: 16),

              Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
                padding: const EdgeInsets.fromLTRB(16, 20, 8, 20),
                child: Column(children: [
                  SettingTile(
                    icon: Icons.person_2_outlined,
                    title: 'Profile settings',
                    subtitle: 'Settings regarding your profile',
                    onTap: () => Navigator.pushNamed(context, AppRoutes.profile),
                  ),
                  SettingTile(
                    icon: Icons.article_outlined,
                    title: 'News settings',
                    subtitle: 'Choose your favourite topics',
                    onTap: () => Navigator.pushNamed(context, AppRoutes.news),
                  ),
                  SettingTile(
                    icon: Icons.notifications_none_rounded,
                    title: 'Notifications',
                    subtitle: 'When would you like to be notified',
                    onTap: () => Navigator.pushNamed(context, AppRoutes.notifications),
                  ),
                  SettingTile(
                    icon: Icons.folder_open_outlined,
                    title: 'Subscriptions',
                    subtitle: 'Currently, you are in Starter Plan',
                    onTap: () => Navigator.pushNamed(context, AppRoutes.subscriptions),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Other', style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w800, color: Colors.grey.shade900)),
                  ),
                  const SizedBox(height: 12),
                  SettingTile(
                    icon: Icons.bug_report_outlined,
                    title: 'Bug report',
                    subtitle: 'Report bugs very easy',
                    onTap: () => Navigator.pushNamed(context, AppRoutes.bugReport),
                  ),
                  SettingTile(
                    icon: Icons.share_outlined,
                    title: 'Share the app',
                    subtitle: 'Share on social media networks',
                    onTap: () => Navigator.pushNamed(context, AppRoutes.share),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
