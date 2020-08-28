import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:tainportfoliowebpage/screens/clothing_home.dart';
import '../components/top_app_bar.dart';
import 'package:tainportfoliowebpage/components/navigation_drawer.dart';
import 'package:tainportfoliowebpage/components/container_box_left_anim.dart';
import 'package:tainportfoliowebpage/components/container_box_right_anim.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:tainportfoliowebpage/constants.dart';
import 'package:page_transition/page_transition.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();

}

class _ShopState extends State<Shop> {

  ScrollController _rrectController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(50),child: TopAppBar()),
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
            ]
          ),
        ),
            child: SingleChildScrollView(
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ClothingHome()));
                      },
                      child: ContainerBoxOne(
                        boxChild: Column(
                          children: [
                            Icon(
                              Icons.add_photo_alternate,
                              color: Color(0xFF000000),
                              size: 300.0,
                            ),
                            Text(
                              'Clothing',
                              style: kBoxText,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ContainerBoxTwo(
                      boxChild: Column(
                        children: [
                          Icon(
                            Icons.add_photo_alternate,
                            color: Color(0xFF000000),
                            size: 300.0,
                          ),
                          Text(
                            'Prints',
                            style: kBoxText,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ContainerBoxOne(
                      boxChild: Column(
                        children: [
                          Icon(
                            Icons.add_photo_alternate,
                            color: Color(0xFF000000),
                            size: 300.0,
                          ),
                          Text(
                            'Merch',
                            style: kBoxText,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ContainerBoxTwo(
                      boxChild: Column(
                        children: [
                          Icon(
                            Icons.add_photo_alternate,
                            color: Color(0xFF000000),
                            size: 300.0,
                          ),
                          Text(
                            'Commissions',
                            style: kBoxText,
                          )
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

class RRectDemo extends StatelessWidget {
  final ScrollController controller;

  const RRectDemo({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollbar.rrect(
      controller: controller,
      labelTextBuilder: (offset) => Text("${offset.floor()}"),
      child: ListView.builder(
        controller: controller,
        itemCount: 1000,
        itemExtent: 100.0,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xFF000000),
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}





