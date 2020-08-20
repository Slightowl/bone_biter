import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF4400b2),
                    Color(0xFF05bcff)
                  ]))),
    );
  }
}