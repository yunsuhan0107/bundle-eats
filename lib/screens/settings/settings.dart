import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:bundle_eats/screens/home/components/navigation_bar.dart'
    as nav_bar;
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'body.dart';
import 'announcements.dart';
import 'bug_report.dart';
import 'events.dart';
import 'policy.dart';
import 'user_settings.dart';

class MySettings extends StatelessWidget {
  List<Menus> menus = [
    Menus(
      menu: "프로필",
    ),
    Menus(
      menu: "공지사항",
    ),
    Menus(
      menu: "이벤트",
    ),
    Menus(
      menu: "환경설정",
    ),
    Menus(
      menu: "약관",
    ),
    Menus(menu: "버그 신고"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
      ),
      body: ListView.builder(
        itemCount: menus.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
              ), //need to add image source
              title: Text(
                menus[index].menu,
                style: const TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                if (menus[index].menu == "프로필") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                }
                if (menus[index].menu == "공지사항") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnnouncementPage(),
                    ),
                  );
                }
                if (menus[index].menu == "이벤트") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventPage(),
                    ),
                  );
                }
                if (menus[index].menu == "환경설정") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                }
                if (menus[index].menu == "약관") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PolicyPage(),
                    ),
                  );
                }
                if (menus[index].menu == "버그 신고") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BugReportPage(),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
      bottomNavigationBar: const nav_bar.NavigationBar(),
    );
  }
}

class Menus {
  String menu;

  Menus({
    required this.menu,
  });
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("프로필"),
        ), //AppBar
        body: const Body()); //scaffold
  }
}

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("공지사항"),
        ), //AppBar
        body: Announcements()); //scaffold
  }
}

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("이벤트"),
        ), //AppBar
        body: Events()); //scaffold
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("환경설정"),
        ), //AppBar
        body: UserSettings()); //scaffold
  }
}

class PolicyPage extends StatelessWidget {
  const PolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("약관"),
        ), //AppBar
        body: const Policy()); //scaffold
  }
}

class BugReportPage extends StatelessWidget {
  const BugReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("버그 신고"),
        ), //AppBar
        body: const BugReport()); //scaffold
  }
}
