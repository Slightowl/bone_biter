import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tainportfoliowebpage/components/navigation_drawer.dart';
import 'package:tainportfoliowebpage/components/top_app_bar.dart';
import 'package:tainportfoliowebpage/components/container_box_zoom.dart';
import 'package:tainportfoliowebpage/constants.dart';
import 'package:flutter_animator/flutter_animator.dart';


class PrintHome extends StatefulWidget {
  @override
  _PrintHomeState createState() => _PrintHomeState();
}

class _PrintHomeState extends State<PrintHome> {

  GlobalKey<AnimatorWidgetState> _key = GlobalKey<AnimatorWidgetState>();

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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Prints',
                    style: kClothingTitleText,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _key.currentState.forward();
                        },
                        child: Jello(
                          key: _key,
                          child: ClothingBox(
                            boxChild: Column(
                              children: [
                                Icon(
                                  Icons.add_photo_alternate,
                                  color: Color(0xFF000000),
                                  size: 100,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      ClothingBox(
                        boxChild: Column(
                          children: [
                            Icon(
                              Icons.add_photo_alternate,
                              color: Color(0xFF000000),
                              size: 100,
                            )
                          ],
                        ),
                      ),
                      ClothingBox(
                        boxChild: Column(
                          children: [
                            Icon(
                              Icons.add_photo_alternate,
                              color: Color(0xFF000000),
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClothingBox(
                        boxChild: Column(
                          children: [
                            Icon(
                              Icons.add_photo_alternate,
                              color: Color(0xFF000000),
                              size: 100,
                            )
                          ],
                        ),
                      ),
                      ClothingBox(
                        boxChild: Column(
                          children: [
                            Icon(
                              Icons.add_photo_alternate,
                              color: Color(0xFF000000),
                              size: 100,
                            )
                          ],
                        ),
                      ),
                      ClothingBox(
                        boxChild: Column(
                          children: [
                            Icon(
                              Icons.add_photo_alternate,
                              color: Color(0xFF000000),
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
