import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task7(),
    );
  }
}

class Task7 extends StatefulWidget {
  const Task7({super.key});

  @override
  State<Task7> createState() => _Task7State();
}

class _Task7State extends State<Task7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: RombPainter(),
        ),
      ),
    );
  }
}

class RombPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..color = Colors.black
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0;

    var path = Path();
    path.moveTo(0, -60);
    path.lineTo(60, 0);
    path.lineTo(0, 60);
    path.lineTo(-60, 0);
    path.close();

    canvas.translate(size.width / 2, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
