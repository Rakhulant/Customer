import 'package:Customer/screens/authScreen.dart';
import 'package:Customer/screens/credentials.dart';
import 'package:Customer/screens/navHolder.dart';
import 'package:Customer/screens/splashScreen.dart';
import 'package:Customer/widgets/loading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, accentColor: Colors.blue),
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasData) {
                    if (!snapshot.data.isAnonymous &&
                        snapshot.data.displayName == null) {
                      return Credentials();
                    }
                    return NavHolder();
                  }
                  if (snapshot.data == null) {
                    return AuthScreen();
                  }
                  return Loading();
                }
                return SplashScreen();
              },
            );
          }
          return SplashScreen();
        },
      ),
    );
  }
}
