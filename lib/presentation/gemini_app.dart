import 'package:flutter/material.dart';

class GeminiApp extends StatelessWidget {
  const GeminiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SelectableText("上原宇行"),
        ),
      ),
    );
  }
}
