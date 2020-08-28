import 'package:flutter/material.dart';
import 'package:tainportfoliowebpage/components/navigation_drawer.dart';
import 'package:tainportfoliowebpage/components/top_app_bar.dart';
import 'package:tainportfoliowebpage/constants.dart';

class CommissionHome extends StatefulWidget {
  @override
  _CommissionHomeState createState() => _CommissionHomeState();
}

class _CommissionHomeState extends State<CommissionHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50), child: TopAppBar()),
        endDrawer: NavDrawer(),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF000000),
                  Color(0xFFff02BF),
                  //Color(0xFF7f0065),
                  //Color(0xFF9e017e),
                  //Color(0xFF000000)
                ]),
          ),
          child: Center(
            child: Text(
              'commissions',
              style: kBoxText,
            ),
          ),
        ));
  }
}
