import 'package:Customer/firebase/authFuncs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final fInst = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton.icon(
                color: Colors.white,
                icon: Icon(Icons.phone),
                label: Text('Sign In'),
                onPressed: () => AuthFuncs().signInWithPhone()),
            FlatButton(
              onPressed: () {
                AuthFuncs().signInAnonymously();
              },
              child: Text('Enter as a Guest'),
            )
          ],
        ),
      ),
    );
  }
}
