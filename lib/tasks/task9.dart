import 'package:flutter/material.dart';

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
            size: const Size(220, 140),
            painter: BoxPainter(),
          ),
        ),
      ),
    );
  }
}

class BoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint fillPaint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    double depth = 40;

    Rect frontRect = Rect.fromLTWH(depth, 0, size.width - depth, size.height);
    canvas.drawRect(frontRect, fillPaint);
    canvas.drawRect(frontRect, borderPaint);

    Path topFace = Path()
      ..moveTo(0, -depth)
      ..lineTo(size.width - depth, -depth)
      ..lineTo(size.width, 0)
      ..lineTo(depth, 0)
      ..close();
    canvas.drawPath(topFace, fillPaint);
    canvas.drawPath(topFace, borderPaint);

    Path leftSide = Path()
      ..moveTo(0, -depth)
      ..lineTo(depth, 0)
      ..lineTo(depth, size.height)
      ..lineTo(0, size.height - depth)
      ..close();
    canvas.drawPath(leftSide, fillPaint);
    canvas.drawPath(leftSide, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
