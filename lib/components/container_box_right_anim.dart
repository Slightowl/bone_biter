import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class ContainerBoxTwo extends StatelessWidget {
  const ContainerBoxTwo({@required this.boxChild});

  final Widget boxChild;

  @override
  Widget build(BuildContext context) {
    return SlideInRight(
      child: Pulse(
        child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF1bef15),
                  Color(0xFF02cde9)
                ]
            ),
          ),
          child: boxChild,
        ),

      ),
    );
  }
}