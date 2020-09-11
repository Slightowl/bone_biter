import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tainportfoliowebpage/screens/prints_home.dart';
import 'package:tainportfoliowebpage/components/navigation_drawer.dart';
import 'package:tainportfoliowebpage/components/top_app_bar.dart';

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
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50), child: TopAppBar()),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
      ),
      endDrawer: NavDrawer(),
      body: SingleChildScrollView(
        child: Container(
          height: 1500.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xFF000000),
                Color(0xFFff02BF)
                //Color(0xFFff00d0),
                //Color(0xFFaf0089),
                //Color(0xFFff00d0)
              ])),
          child: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _key.currentState.forward();
                  },
                  child: Swing(
                    key: _key,
                    child: Pulse(
                      child: ZoomIn(
                        child: Image(
                          image: AssetImage('images/bone-biter-logo.png'),
                          width: 500.0,
                          height: 500.0,
                        ),
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
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: PrintHome()));
                        },
                        child: SlideInRight(
                          child: Pulse(
                            child: Image(image: AssetImage('images/print-icon.png'),
                                width: 400,
                                height: 400
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
