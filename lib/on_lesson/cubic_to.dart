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
      home: CubicTo(),
    );
  }
}

class CubicTo extends StatefulWidget {
  const CubicTo({super.key});

  @override
  State<CubicTo> createState() => _CubicToState();
}

class _CubicToState extends State<CubicTo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
        painter: CubicToPainter(),
      ),
    );
  }
}

class CubicToPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    Path path = Path();
    path.moveTo(50, 350);
    path.cubicTo(150, 250, 250, 450, 350, 350);

    canvas.drawPath(path, paint);

  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}

