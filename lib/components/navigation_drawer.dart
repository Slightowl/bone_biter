import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tainportfoliowebpage/screens/prints_home.dart';
import 'package:tainportfoliowebpage/screens/commissions_home.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF1bef15), Color(0xFF02cde9)]),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image(
                image: AssetImage('images/bone-biter-logo.png'),
                width: 50.0,
                height: 50.0,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Prints'),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: PrintHome()));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Commissions'),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: CommissionHome()));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Account'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
