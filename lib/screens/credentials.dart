import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Credentials extends StatelessWidget {
  final cont = TextEditingController();
  final instance = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credentials'),
      ),
      backgroundColor: Colors.brown,
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: cont,
                      key: Key('name'),
                      decoration: InputDecoration(
                          hintText: 'Name *',
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none),
                      autofocus: true,
                      validator: (value) {
                        if (value.isNotEmpty) {
                          return null;
                        }
                        return 'Name is required';
                      },
                    ),
                    OutlineButton(
                      onPressed: () {
                        final _name = cont.text;
                        if (_name.isNotEmpty) {
                          instance.currentUser
                              .updateProfile(displayName: _name)
                              .then((value) => print('Profile Updated'))
                              .catchError((error) => print(error));
                        }
                      },
                      child: Text('Save'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
