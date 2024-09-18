import 'package:flutter/material.dart';

class GeminiApp extends StatelessWidget {
  const GeminiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'M PLUS 1',
      ),
      home: const Scaffold(
        body: Center(
          child: Text("上原宇行"),
        ),
      ),
    );
  }
}
