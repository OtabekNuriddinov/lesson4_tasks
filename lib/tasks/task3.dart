import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task3(),
    );
  }
}

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: XPainter(),
        ),
      ),
    );
  }
}

class XPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..color = Colors.black
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0;

    var path1 = Path();
    path1.moveTo(-50, -50);
    path1.lineTo(50, 50);

    var path2 = Path();
    path2.moveTo(50, -50);
    path2.lineTo(-50, 50);

    canvas.drawPath(path1, paint);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
