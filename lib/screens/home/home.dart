import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/navigation_bar.dart' as nav_bar;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Body(),
      bottomNavigationBar: const nav_bar.NavigationBar(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          ),
          Text('Address', style: TextStyle(color: Colors.black)),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
