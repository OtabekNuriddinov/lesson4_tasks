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
      home: Quadratic(),
    );
  }
}

class Quadratic extends StatefulWidget {
  const Quadratic({super.key});

  @override
  State<Quadratic> createState() => _QuadraticState();
}

class _QuadraticState extends State<Quadratic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
        painter: QuadraticBeazier(),
      ),
    );
  }
}

class QuadraticBeazier extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    Path path = Path();
    path.moveTo(50, 300);
    path.quadraticBezierTo(150, 100, 300, 300);

    canvas.drawPath(path, paint);
  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}

