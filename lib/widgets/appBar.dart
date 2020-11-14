import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Widget title;
  final Color color;
  MyAppBar(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        child: title);
  }
}
