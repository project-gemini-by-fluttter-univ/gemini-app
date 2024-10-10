import 'package:flutter/material.dart';
import 'package:gemini_app/constants/gemini_prompt.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import '../constants/function_calling_setting.dart';

class KeywordAnswerPage extends StatefulWidget {
  const KeywordAnswerPage({
    super.key,
    required this.model,
    required this.keyword1,
    required this.keyword2,
  });

  final GenerativeModel model;

  final String keyword1;
  final String keyword2;

  @override
  State<KeywordAnswerPage> createState() => _KeywordAnswerPageState();
}

class _KeywordAnswerPageState extends State<KeywordAnswerPage> {
  late Future<GenerateContentResponse> response;

  @override
  void initState() {
    final content = Content.text(geminiPromptKeyword);
    final keywordContent1 = Content.text(widget.keyword1);
    final keywordContent2 = Content.text(widget.keyword2);

    response = widget.model
        .generateContent([content, keywordContent1, keywordContent2]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'バズる文章はこちら！',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
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
                          'setKeywordAnswer' =>
                            setKeywordAnswer(functionCall.args),
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
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text('TOPへ戻る'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
