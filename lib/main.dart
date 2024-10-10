import 'package:flutter/material.dart';
import 'package:gemini_app/constants/function_calling_setting.dart';
import 'package:gemini_app/constants/gemini_api_key.dart';
import 'package:gemini_app/presentation/gemini_app.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

void main() {
  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: geminiApiKey,
    tools: [
      Tool(functionDeclarations: [
        keywordAnswerController,
        imageAnswerController,
      ]),
    ],
  );

  runApp(GeminiApp(
    model: model,
  ));
}
