import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:meta/meta.dart';

List _elements = [
  {'name': '프로필', 'group': '앱 설정'},
  {'name': '공지사항', 'group': '기타'},
  {'name': '이벤트', 'group': '기타'},
  {'name': '환경설정', 'group': '앱 설정'},
  {'name': '약관', 'group': '기타'},
];

class MySettings extends StatelessWidget {
  List<Menus> menus = [
    const Menus(
      menu: 'My Profile',
    ),
    const Menus(
      menu: 'Setting1',
    ),
    const Menus(
      menu: 'Setting2',
    ),
    const Menus(
      menu: 'Settings3',
    ),
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
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.pink,
                  ), //need to add image sourc
                  title: Text(menu.menu),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SpecificProfile()),
                    );
                  },
                ),
              );
            }));
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
