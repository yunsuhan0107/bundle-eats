import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Order History',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
            backgroundColor: Colors.white),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 2:
        Navigator.pushNamed(context, '/order_history');
        break;
      case 3:
        Navigator.pushNamed(context, '/settings');
        break;
    }
  }
}
