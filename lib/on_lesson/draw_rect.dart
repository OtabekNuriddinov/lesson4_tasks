import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawRect(),
    );
  }
}

class DrawRect extends StatefulWidget {
  const DrawRect({super.key});

  @override
  State<DrawRect> createState() => _DrawRectState();
}

class _DrawRectState extends State<DrawRect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
          painter: RectPainter(),
        ),
      ),
    );
  }
}

class RectPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
    ..color = Colors.purple
    ..style = PaintingStyle.fill;

    var rect = Rect.fromLTWH(50, 50, 300, 200);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
