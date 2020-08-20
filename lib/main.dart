import 'package:flutter/material.dart';
import 'constants.dart';
import 'home.dart';

void main() => runApp(Sprint());


class Sprint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: kPrimary,
          scaffoldBackgroundColor: kPrimary


      ),
      home: HomeScreen(),
    );
  }
}