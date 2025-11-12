
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class CustomizedBottomNavigationbar extends StatefulWidget {
  CustomizedBottomNavigationbar({Key? key}) : super(key: key);

  @override
  _CustomizedBottomNavigationbarState createState() =>
      _CustomizedBottomNavigationbarState();
}


class _CustomizedBottomNavigationbarState
    extends State<CustomizedBottomNavigationbar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodySection(),
      bottomNavigationBar: customBottomNavigationBar(),
    );
  }

// * Body Section Components
  bodySection() {
    switch (index){
      case 0:
        return HomePage();
      case 1 :
        return UserPage();
      case 2 :
        return MessagesPage();
      case 3:
        return SettingPage();
    }
  }

// * BottomNavigationBar Section Components
  customBottomNavigationBar() {
    return BottomNavyBar(
      selectedIndex: index,
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.red,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Users'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text('Messages'),
          activeColor: Colors.pink,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
          activeColor: Colors.blue,
          textAlign: TextAlign.center,
        ),
      ],
      onItemSelected: (index) => setState(() => this.index = index),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.apps,
              size: 120,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 120,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.settings,
              size: 120,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: 120,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
