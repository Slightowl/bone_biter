import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';


class ClothingBox extends StatelessWidget {
  const ClothingBox({@required this.boxChild});

  final Widget boxChild;

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF1bef15), Color(0xFF02cde9)]),
          ),
          child: boxChild),
    );
  }
}
