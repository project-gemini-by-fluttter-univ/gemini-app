import 'package:flutter/material.dart';
import 'package:gemini_app/presentation/title_page.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiApp extends StatelessWidget {
  const GeminiApp({
    super.key,
    required this.model,
  });

  final GenerativeModel model;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'M PLUS 1',
      ),
      home: TitlePage(
        model: model,
      ),
    );
  }
}
