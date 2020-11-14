import 'package:Customer/screens/cartScreen.dart';
import 'package:Customer/screens/homeScreen.dart';
import 'package:Customer/screens/profileScreen.dart';
import 'package:flutter/material.dart';

class NavHolder extends StatefulWidget {
  @override
  _NavHolderState createState() => _NavHolderState();
}

class _NavHolderState extends State<NavHolder> {
  List<Widget> screens = [Home(), Cart(), Profile()];
  var cIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screens[cIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: BottomNavigationBar(
                  currentIndex: cIndex,
                  onTap: (value) {
                    setState(() {
                      cIndex = value;
                    });
                  },
                  showUnselectedLabels: false,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.face_outlined), label: 'Profile'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
