import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tainportfoliowebpage/constants.dart';
import 'package:tainportfoliowebpage/screens/home.dart';
import 'package:page_transition/page_transition.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HomeScreen()));
        },
          child: Text('BoneBiter', style: kTitleText)),
      backgroundColor: Color(0xFF000000),
      leading: Image.asset('images/small_icon.png'),

      /*actions: [

        Padding(
          padding: EdgeInsets.only(right: 200.0),
          child: Row(
            children: [
              Center(
                child: Text(
                  'Login',
                  style: kMenuText,
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
              Center(
                child: Text(
                  'Basket',
                  style: kMenuText,
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
              Center(
                child: Text(
                  'Contact',
                  style: kMenuText,
                ),
              ),
            ],
          ),
        ),


      ],*/
    );
  }
}