import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawOval(),
    );
  }
}

class DrawOval extends StatefulWidget {
  const DrawOval({super.key});

  @override
  State<DrawOval> createState() => _DrawOvalState();
}

class _DrawOvalState extends State<DrawOval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
          painter: OvalPainter(),
        ),
      ),
    );
  }
}

class OvalPainter extends CustomPainter{


  @override
  void paint(Canvas canvas, Size size) {

    var paint = Paint()
    ..color = Colors.purple
    ..style = PaintingStyle.stroke
    ..strokeWidth = 3.0;

    var rect = Rect.fromLTRB(70, 100, 300, 200);

    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
