import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WithGesture(),
    );
  }
}

class WithGesture extends StatefulWidget {
  const WithGesture({super.key});

  @override
  State<WithGesture> createState() => _WithGestureState();
}

class _WithGestureState extends State<WithGesture> {
  final List<Offset?> points = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: GestureDetector(
            onPanUpdate: (detail){
              setState(() {
                points.add(detail.localPosition);
              });
            },
            onPanDown: (detail){
              setState(() {
                points.add(null);
              });
            },

            child: CustomPaint(
              painter: SignaturePainter(points),
              child: Container(),
            ),
          )
      ),
    );
  }
}

class SignaturePainter extends CustomPainter {
  final List<Offset?> points;
  const SignaturePainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null &&
          points[i + 1] != null &&
          ((points[i]!.dy < size.height && points[i + 1]!.dy < size.height) &&
              (points[i]!.dy > 0 && points[i + 1]!.dy > 0)) &&
          (points[i]!.dx < size.width && points[i + 1]!.dx < size.width) &&
          (points[i]!.dx > 0 && points[i + 1]!.dx > 0)) {
        canvas.drawLine(points[i]!, points[i+1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
