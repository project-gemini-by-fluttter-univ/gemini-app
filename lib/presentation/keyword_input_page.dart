import 'package:flutter/material.dart';
import 'package:gemini_app/presentation/keyword_answer_page.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class KeywordInputPage extends StatefulWidget {
  const KeywordInputPage({super.key, required this.model});

  final GenerativeModel model;

  @override
  State<KeywordInputPage> createState() => _KeywordInputPageState();
}

class _KeywordInputPageState extends State<KeywordInputPage> {
  final TextEditingController _keywordController1 = TextEditingController();
  final TextEditingController _keywordController2 = TextEditingController();

  @override
  void dispose() {
    _keywordController1.dispose();
    _keywordController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox.shrink(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'キーワードを入力！',
                  style: TextStyle(color: Color(0xFF19AAE8), fontSize: 24),
                ),
                SizedBox.shrink(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                right: 56,
                bottom: 0,
                left: 56,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('キーワード１'),
                  ),
                  TextField(
                    controller: _keywordController1,
                    maxLines: 3,
                    minLines: 3,
                    decoration: const InputDecoration(
                      hintText: 'お魚',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF19AAE8),
                        ),
                      ),
                    ),
                    onChanged: (text) {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                right: 56,
                bottom: 0,
                left: 56,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('キーワード２'),
                  ),
                  TextField(
                    controller: _keywordController2,
                    maxLines: 3,
                    minLines: 3,
                    decoration: const InputDecoration(
                      hintText: '富士山',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF19AAE8),
                        ),
                      ),
                    ),
                    onChanged: (text) {},
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => KeywordAnswerPage(
                            model: widget.model,
                            keyword1: _keywordController1.text,
                            keyword2: _keywordController2.text,
                          )),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(160, double.infinity),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: const Color(0xFF19AAE8),
              ),
              child: const Text(
                'Let\'s Buzz!',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
