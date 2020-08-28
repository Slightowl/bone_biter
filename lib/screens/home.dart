import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:tainportfoliowebpage/screens/shop_front.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // key for use in animation play/stop/reverse etc
  GlobalKey<AnimatorWidgetState> _key = GlobalKey<AnimatorWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1000.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xFF000000),
                Color(0xFF000000)
                //Color(0xFFff00d0),
                //Color(0xFFaf0089),
                //Color(0xFFff00d0)
              ])),
          child: Center(
            child: Column(
              children: [
                Pulse(
                  child: ZoomIn(
                    key: _key,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.scale, child: Shop()));
                      },
                      child: Image(
                        image: AssetImage('images/first-draft-logo2.png'),
                        width: 500.0,
                        height: 500.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Center(
                      child: SocialMediaButton.facebook(
                        url: 'https://www.facebook.com',
                        iconData: SocialMediaIcons.facebook,
                        color: Color(0xFFeeff05),
                      ),
                    ),
                    Center(
                      child: SocialMediaButton.twitter(
                        url: 'https://www.twitter.com',
                        iconData: SocialMediaIcons.twitter,
                        color: Color(0xFFeeff05),
                      ),
                    ),
                    Center(
                      child: SocialMediaButton.instagram(
                        url: 'https://www.instagram.com/bone_biter/',
                        iconData: SocialMediaIcons.instagram,
                        color: Color(0xFFeeff05),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
Column(
children: <Widget>[
Expanded(
flex: 8,
child: Row(
children: [
ImageBox(),
Expanded(
child: Column(
children: [
Row(children: [ImageBox(), ImageBox(), ImageBox(),]),
Row(children: [ImageBox(), ImageBox(), ImageBox(),]),
Row(children: [ImageBox(), ImageBox(), ImageBox(),]),
],
),
)
],
),
),
],
),
*/
