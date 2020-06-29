import 'package:flutter/material.dart';
import 'EditProfile.dart';
import 'AccountPage.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home:  ProfileScreen(),
    );
  }
}
