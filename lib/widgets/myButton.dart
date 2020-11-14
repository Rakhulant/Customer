import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  MyButton(this.child, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(minWidth: 0, minHeight: 0),
      onPressed: onPressed,
      child: child,
    );
  }
}
