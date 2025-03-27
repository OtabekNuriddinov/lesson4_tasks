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
      home: ArcTo(),
    );
  }
}

class ArcTo extends StatefulWidget {
  const ArcTo({super.key});

  @override
  State<ArcTo> createState() => _ArcToState();
}

class _ArcToState extends State<ArcTo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
        painter: ArcToPainter(),
      ),
    );
  }
}

class ArcToPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    Rect rect = Rect.fromLTWH(50, 50, 200, 200);
    canvas.drawArc(rect, 0, pi , false, paint);
  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}

