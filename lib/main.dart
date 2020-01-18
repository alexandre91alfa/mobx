import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_x/home.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mobx',
      home: Home(),
    );
  }
}