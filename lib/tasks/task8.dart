import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task8(),
    );
  }
}

class Task8 extends StatefulWidget {
  const Task8({super.key});

  @override
  State<Task8> createState() => _Task8State();
}

class _Task8State extends State<Task8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: HexagonPainter(),
        ),
      ),
    );
  }
}

class HexagonPainter extends CustomPainter{


  @override
  void paint(Canvas canvas, Size size) {

    var paint = Paint()
        ..color = Colors.black
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0;

    var path = Path();
    path.moveTo(0, -60);
    path.lineTo(52, -30);
    path.lineTo(52, 30);
    path.lineTo(0, 60);
    path.lineTo(-52, 30);
    path.lineTo(-52, -30);
    path.close();

    canvas.translate(size.width / 2, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
