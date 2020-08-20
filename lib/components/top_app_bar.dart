import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tainportfoliowebpage/constants.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Coming Soon...', style: kTitleText),
      backgroundColor: Color(0xFF000000),
      leading: Image.asset('images/skull-placeholder.png'),
      /*actions: [
        Text(
          'Shop',
          style: kMenuText,
        ),
        SizedBox(
          width: 40.0,
        ),
        Text(
          'About',
          style: kMenuText,
        ),
        SizedBox(
          width: 40.0,
        ),
        Text(
          'Contact',
          style: kMenuText,
        ),
        SizedBox(
          width: 600.0,
        )
      ],*/
    );
  }
}