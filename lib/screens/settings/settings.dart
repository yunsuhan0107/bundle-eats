import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:meta/meta.dart';
import 'package:bundle_eats/screens/home/components/navigation_bar.dart'
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';

    as nav_bar;

class MySettings extends StatelessWidget {
  List<Menus> menus = [
    const Menus(
      menu: '프로필',
    ),
    const Menus(
      menu: '공지사항',
    ),
    const Menus(
      menu: '이벤트',
    ),
    const Menus(
      menu: '환경설정',
    ),
    const Menus(
      menu: '약관',
    ),
    const Menus(menu: '버그 신고'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView.builder(
        itemCount: menus.length,
        itemBuilder: (context, index) {
          final menu = menus[index];
          return Card(
            child: ListTile(
              leading: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
              ), //need to add image source
              title: Text(menu.menu),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SpecificProfile()),
                );
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
  final String menu;

  const Menus({
    required this.menu,
  });
}

class SpecificProfile extends StatelessWidget {
  const SpecificProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

