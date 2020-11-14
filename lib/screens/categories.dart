import 'package:Customer/widgets/appBar.dart';
import 'package:Customer/widgets/myButton.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ColumnSuper(
          innerDistance: -33,
          invert: true,
          children: [
            MyAppBar(
                Center(
                    child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.navigate_before,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Expanded(
                      child: Text(
                        'Categories',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    )
                  ],
                )),
                Colors.black),
            MyButton(
                MyAppBar(
                    Center(
                        child: Text(
                      '1',
                      style: TextStyle(color: Colors.grey[900]),
                    )),
                    Colors.grey[400]),
                () => catPress(context, 1)),
            MyAppBar(
                Center(
                    child: Text(
                  '2',
                  style: TextStyle(color: Colors.grey[850]),
                )),
                Colors.grey[500]),
            MyAppBar(
                Center(
                    child: Text(
                  '3',
                  style: TextStyle(color: Colors.grey[800]),
                )),
                Colors.grey[600]),
            MyAppBar(
                Center(
                    child: Text(
                  '4',
                  style: TextStyle(color: Colors.grey[800]),
                )),
                Colors.grey[700]),
            MyAppBar(
                Center(
                    child: Text(
                  '5',
                  style: TextStyle(color: Colors.grey[600]),
                )),
                Colors.grey[800]),
            MyAppBar(
                Center(
                    child: Text(
                  '6',
                  style: TextStyle(color: Colors.grey[500]),
                )),
                Colors.grey[850]),
            MyAppBar(
                Center(
                    child: Text(
                  '7',
                  style: TextStyle(color: Colors.grey[400]),
                )),
                Colors.grey[900]),
          ],
        ),
      ),
    );
  }

  void catPress(BuildContext context, int cat) {
    Navigator.pop(context);
  }
}
