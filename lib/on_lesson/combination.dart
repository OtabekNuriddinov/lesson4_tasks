import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Combination(),
    );
  }
}

class Combination extends StatefulWidget {
  const Combination({super.key});

  @override
  State<Combination> createState() => _CombinationState();
}

class _CombinationState extends State<Combination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(150, 150),
          painter: Combine(),
        ),
      ),
    );
  }
}

class Combine extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    final facePaint = Paint()
        ..color = Colors.yellow
        ..style = PaintingStyle.fill;

    var center = Offset(size.width/2, size.height/2);
    canvas.drawCircle(center, size.width/2, facePaint);

    final eyePaint = Paint()
    ..color = Colors.black;
    final highLightPaint = Paint()
    ..color = Colors.white;

    var leftEyeCenter = Offset(size.width/3, size.height/3);
    canvas.drawCircle(leftEyeCenter, 15, eyePaint);
    canvas.drawCircle(leftEyeCenter.translate(5, -5), 4, highLightPaint);

    var rightEyeCenter = Offset(2 * size.width/3, size.height/3);
    canvas.drawCircle(rightEyeCenter, 15, eyePaint);
    canvas.drawCircle(rightEyeCenter.translate(5, -5), 4, highLightPaint);

    final smilePaint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 5.0;

    final smilePath = Path();
    smilePath.moveTo(size.width/4, 7*size.height / 12);
    smilePath.quadraticBezierTo(size.width/2, 5*size.height/6, 3*size.width/4, 7*size.height/12);
    canvas.drawPath(smilePath, smilePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
