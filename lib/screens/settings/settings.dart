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
      menu: '프로필',
    ),
    Menus(
      menu: '공지사항',
    ),
    Menus(
      menu: '이벤트',
    ),
    Menus(
      menu: '환경설정',
    ),
    Menus(
      menu: '약관',
    ),
    Menus(menu: '버그 신고'),
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
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                if (menus[index].menu == '프로필') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                }
                if (menus[index].menu == '공지사항') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnnouncementPage(),
                    ),
                  );
                }
                if (menus[index].menu == '이벤트') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventPage(),
                    ),
                  );
                }
                if (menus[index].menu == '환경설정') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                }
                if (menus[index].menu == '약관') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PolicyPage(),
                    ),
                  );
                }
                if (menus[index].menu == '버그 신고') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BugReport(),
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

// class SpecificProfile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white.withOpacity(.94),
//       appBar: AppBar(
//         title: Text(""),
//         centerTitle: true,
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView(
//           children: [
//             // user card
//             SimpleUserCard(
//               userName: "상세 프로필",
//               userProfilePic: AssetImage(""),
//             ),
//             SettingsGroup(
//               items: [
//                 SettingsItem(
//                   onTap: () {},
//                   icons: CupertinoIcons.pencil_outline,
//                   iconStyle: IconStyle(),
//                   title: '프로필',
//                   subtitle: "개인정보",
//                 ),
//                 SettingsItem(
//                   onTap: () {},
//                   icons: Icons.fingerprint,
//                   iconStyle: IconStyle(
//                     iconsColor: Colors.white,
//                     withBackground: true,
//                     backgroundColor: Colors.red,
//                   ),
//                   title: '보안',
//                   subtitle: "",
//                 ),
//                 SettingsItem(
//                   onTap: () {},
//                   icons: Icons.dark_mode_rounded,
//                   iconStyle: IconStyle(
//                     iconsColor: Colors.white,
//                     withBackground: true,
//                     backgroundColor: Colors.red,
//                   ),
//                   title: 'Dark mode',
//                   subtitle: "Automatic",
//                   trailing: Switch.adaptive(
//                     value: false,
//                     onChanged: (value) {},
//                   ),
//                 ),
//               ],
//             ),
//             SettingsGroup(
//               items: [
//                 SettingsItem(
//                   onTap: () {},
//                   icons: Icons.info_rounded,
//                   iconStyle: IconStyle(
//                     backgroundColor: Colors.purple,
//                   ),
//                   title: '',
//                   subtitle: "",
//                 ),
//               ],
//             ),
//             // You can add a settings title
//             SettingsGroup(
//               settingsGroupTitle: "Account",
//               items: [
//                 SettingsItem(
//                   onTap: () {},
//                   icons: Icons.exit_to_app_rounded,
//                   title: "로그아웃",
//                 ),
//                 SettingsItem(
//                   onTap: () {},
//                   icons: CupertinoIcons.repeat,
//                   title: "계정변경 씨발러마",
//                 ),
//                 SettingsItem(
//                   onTap: () {},
//                   icons: CupertinoIcons.delete_solid,
//                   title: "계정삭제 개새꺄",
//                   titleStyle: TextStyle(
//                     color: Colors.red,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
        body: const Announcements()); //scaffold
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
        body: const Events()); //scaffold
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
        body: const UserSettings()); //scaffold
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

class BugReport extends StatelessWidget {
  const BugReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("버그 신고"),
        ), //AppBar
        body: const BugReport()); //scaffold
  }
}
