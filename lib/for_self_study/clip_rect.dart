import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ClipRect Misol")),
        body: Center(
          child: ClipRect(
            child: Align(
              alignment: Alignment.center,
              widthFactor: 0.6,
              heightFactor: 0.6,
              child: Image.network(
                "https://source.unsplash.com/200x200/?nature",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
