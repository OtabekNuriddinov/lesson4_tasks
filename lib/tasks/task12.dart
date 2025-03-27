import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CustomPaint(
            size: const Size(140, 200),
            painter: AndroidLogoPainter(),
          ),
        ),
      ),
    );
  }
}

class AndroidLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final fillPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.stroke
    ..strokeWidth = 4.0;

    /// Asosiy tanasi
    final bodyRect = Rect.fromLTWH(20, 68, 100, 100);
    final body = RRect.fromRectAndCorners(
      bodyRect,
      bottomLeft: const Radius.circular(16),
      bottomRight: const Radius.circular(16),
    );

    /// Bosh qismi (yarim doira)
    final headRect = Rect.fromLTWH(20, 20, 100, 90);


    canvas.drawArc(headRect, pi, pi, true, fillPaint);
    canvas.drawArc(headRect, pi, pi, true, borderPaint);
    canvas.drawRRect(body, fillPaint);


    /// Qo'llari

    const radius = Radius.circular(20.0);

    final firstHand = Rect.fromLTWH(-5, 75, 20, 70);
    final secondHand = Rect.fromLTWH(125, 75, 20, 70);

    final roundedFirstHand = RRect.fromRectAndRadius(firstHand, radius);
    final roundedSecondHand = RRect.fromRectAndRadius(secondHand, radius);


    canvas.drawRRect(roundedFirstHand, fillPaint);
    canvas.drawRRect(roundedSecondHand, fillPaint);

    /// oyoqlari

    final firstFoot = Rect.fromLTWH(82, 150, 20, 55);
    final secondFoot = Rect.fromLTWH(42, 150, 20, 55);
    final roundedFirstFoot = RRect.fromRectAndRadius(firstFoot, radius);
    final roundedSecondFoot = RRect.fromRectAndRadius(secondFoot, radius);

    canvas.drawRRect(roundedFirstFoot, fillPaint);
    canvas.drawRRect(roundedSecondFoot, fillPaint);

    /// ko'zlari

    var centerFirst = Offset(size.width/2+20, size.height/2-55);
    var centerSecond = Offset(size.width/2-20, size.height/2-55);

    var radiusEye = 4.0;
    var paintEye = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.fill;

    canvas.drawCircle(centerFirst, radiusEye, paintEye);
    canvas.drawCircle(centerSecond, radiusEye, paintEye);

    /// Quloqlari

    final earPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(Offset(95, 5), Offset(75, 40), earPaint);

    canvas.drawLine(Offset(45, 5), Offset(65, 40), earPaint);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
