import 'package:Customer/widgets/appBar.dart';
import 'package:Customer/widgets/catagoriesBar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final sController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        MyAppBar(
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextField(
                          controller: sController,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          cursorColor: Colors.white,
                          autocorrect: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  sController.clear();
                                },
                              ),
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              disabledBorder: InputBorder.none,
                              hintText: 'What are you looking for today?',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Colors.black),
        CatagoryBar()
      ],
    ));
  }
}
