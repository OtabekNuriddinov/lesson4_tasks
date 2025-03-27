import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawWPath(),
    );
  }
}

class DrawWPath extends StatefulWidget {
  const DrawWPath({super.key});

  @override
  State<DrawWPath> createState() => _DrawWPathState();
}

class _DrawWPathState extends State<DrawWPath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
        painter: PathPainter(),
      ),
    );
  }
}

class PathPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    var paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4.0;

    final path = Path();
    path.moveTo(100, 100);
    path.lineTo(300, 100);
    path.lineTo(300, 300);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;


}


