import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:gemini_app/constants/function_calling_setting.dart';
import 'package:gemini_app/constants/gemini_prompt.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ImageAnswerPage extends StatefulWidget {
  const ImageAnswerPage({
    super.key,
    required this.model,
    required this.imageUlist,
    required this.extension,
  });

  final GenerativeModel model;
  final Uint8List imageUlist;
  final String extension;

  @override
  State<ImageAnswerPage> createState() => _ImageAnswerPageState();
}

class _ImageAnswerPageState extends State<ImageAnswerPage> {
  late Future<GenerateContentResponse> response;

  @override
  void initState() {
    final textPart = TextPart(geminiPromptImage);
    final dataPart = DataPart("image/${widget.extension}", widget.imageUlist);
    final content = Content.multi([textPart, dataPart]);

    response = widget.model.generateContent([content]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'バズる文章はこちら！',
                style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
              Image.memory(
                widget.imageUlist,
                width: 270,
                height: 180,
                fit: BoxFit.cover,
              ),
              FutureBuilder(
                  future: response,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error!.toString()),
                      );
                    }

                    if (snapshot.connectionState == ConnectionState.done &&
                        !snapshot.hasData) {
                      return const Center(
                        child: Text("結果が取得できませんでした"),
                      );
                    }

                    final data = snapshot.data!;

                    final functionCalls = data.functionCalls.toList();

                    String? result;

                    if (functionCalls.isNotEmpty) {
                      final functionCall = functionCalls.first;

                      result = switch (functionCall.name) {
                        'setImageAnswer' => setImageAnswer(functionCall.args),
                        _ => "結果が取得できませんでした",
                      };
                    } else {
                      return const Center(
                        child: Text("結果が取得できませんでした"),
                      );
                    }

                    if (result == null) {
                      return const Center(
                        child: Text("結果が取得できませんでした"),
                      );
                    }

                    return Container(
                      height: 300,
                      width: 300,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.lightBlue),
                      ),
                      child: Text(result),
                    );
                  }),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 50),
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'TOPへ戻る',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
