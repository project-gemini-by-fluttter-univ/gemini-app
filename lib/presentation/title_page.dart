import 'package:flutter/material.dart';
import 'package:gemini_app/presentation/keyword_input_page.dart';
import 'package:gemini_app/presentation/select_photo_page.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key, required this.model});

  final GenerativeModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text(
                "あなたのバズをお助け！",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "BUZZ-AI",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 60.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => KeywordInputPage(
                              model: model,
                            )),
                  );
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(240, double.infinity),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.blue),
                child: const Text(
                  "キーワードでバズる",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => SelectPhotoPage(
                              model: model,
                            )),
                  );
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(240, double.infinity),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.blue),
                child: const Text(
                  '画像でバズる',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                )),
          ],
        ),
      ),
    );
  }
}
