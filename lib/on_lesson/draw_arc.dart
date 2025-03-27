import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawArc(),
    );
  }
}

class DrawArc extends StatefulWidget {
  const DrawArc({super.key});

  @override
  State<DrawArc> createState() => _DrawArcState();
}

class _DrawArcState extends State<DrawArc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
        painter: ArcPainter(),
      )
    );
  }
}

class ArcPainter extends CustomPainter{


  @override
  void paint(Canvas canvas, Size size) {

    var paint = Paint()
    ..color = Colors.blue
    ..style = PaintingStyle.fill;

    var rect = Rect.fromLTRB(100, 150, 350, 400);

    canvas.drawArc(rect, 0, pi, true, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;


}
