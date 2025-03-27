import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task2(),
    );
  }
}

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: PlusPainter(),
        ),
      ),
    );
  }
}

class PlusPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..color = Colors.black
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4.0;

    var path1 = Path();
    path1.moveTo(-100, 0);
    path1.lineTo(100, 0);

    var path2 = Path();
    path2.moveTo(0, -100);
    path2.lineTo(0, 100);

    canvas.drawPath(path1, paint);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
