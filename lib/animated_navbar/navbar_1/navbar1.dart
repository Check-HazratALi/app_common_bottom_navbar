import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationBar1 extends StatefulWidget {
  const NavigationBar1({Key? key}) : super(key: key);

  @override
  _NavigationBar1State createState() =>
      _NavigationBar1State();
}

class _NavigationBar1State
    extends State<NavigationBar1> {
  final items = [
    Icon(Icons.add, size: 30),
    Icon(Icons.list, size: 30),
    Icon(Icons.compare_arrows, size: 30),
    Icon(Icons.search_rounded, size: 30),
    Icon(Icons.person, size: 30)
  ];
  final itemsName = [
    "Add",
    "List",
    "Compare",
    "Search",
    "account",
  ];
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 2, 2),
        body: Center(
          child: TweenAnimationBuilder(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$index",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 150,
                      color: Colors.white),
                ),
              ],
            ),
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(milliseconds: 2000),
            builder: (BuildContext context, double _value, child) {
              return Opacity(
                opacity: _value,
                child: Padding(
                  padding: EdgeInsets.only(bottom: _value * 50),
                  child: child,
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          items: items,
          animationDuration: Duration(milliseconds: 300),
          color: Color(0xffededed),
          height: 55,
          index: index,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}
