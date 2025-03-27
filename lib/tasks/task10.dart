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
            size: const Size(100, 140),
            painter: CylinderPainter(),
          ),
        ),
      ),
    );
  }
}

class CylinderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var fillPaint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    var borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    double width = size.width;
    double height = size.height;
    double ovalHeight = 40;

    /// Yuqori oval markazi
    var topCenter = Offset(width / 2, ovalHeight / 2);
    var topOval = Rect.fromCenter(center: topCenter, width: width, height: ovalHeight);

    /// Pastki oval markazi
    var bottomCenter = Offset(width / 2, height - ovalHeight / 2);
    var bottomOval = Rect.fromCenter(center: bottomCenter, width: width, height: ovalHeight);

    /// Silindr tanasi
    Path bodyPath = Path()
      ..moveTo(0, ovalHeight / 2)
      ..lineTo(0, height - ovalHeight / 2)
      ..arcTo(bottomOval, 3.14, -3.14, false)
      ..lineTo(width, height - ovalHeight / 2)
      ..lineTo(width, ovalHeight / 2)
      ..close();

    canvas.drawPath(bodyPath, fillPaint);
    canvas.drawOval(topOval, fillPaint);
    canvas.drawOval(topOval, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
