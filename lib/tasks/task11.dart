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
            size: const Size(170, 150), // Kvadrat shakl
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
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    double depth = 30;

    /// Old kvadrat tomoni
    Rect frontRect = Rect.fromLTWH(depth, depth, size.width - 2 * depth, size.height - depth);
    canvas.drawRect(frontRect, fillPaint);
    canvas.drawRect(frontRect, borderPaint);

    /// Yuqori tomoni (chapga qaragan)
    Path topFace = Path()
      ..moveTo(depth, depth)
      ..lineTo(size.width - depth, depth)
      ..lineTo(size.width, 0)
      ..lineTo(depth * 2, 0)
      ..close();
    canvas.drawPath(topFace, fillPaint);
    canvas.drawPath(topFace, borderPaint);

    /// O‘ng tomoni
    Path rightSide = Path()
      ..moveTo(size.width - depth, depth)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - depth)
      ..lineTo(size.width - depth, size.height)
      ..close();
    canvas.drawPath(rightSide, fillPaint);
    canvas.drawPath(rightSide, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
