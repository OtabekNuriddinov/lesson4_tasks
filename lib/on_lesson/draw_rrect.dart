import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawRRect(),
    );
  }
}

class DrawRRect extends StatefulWidget {
  const DrawRRect({super.key});

  @override
  State<DrawRRect> createState() => _DrawRectState();
}

class _DrawRectState extends State<DrawRRect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
          painter: RRectPainter(),
        ),
      ),
    );
  }
}

class RRectPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    var rrect = RRect.fromLTRBAndCorners(50, 50, 300, 200, bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20));

    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
