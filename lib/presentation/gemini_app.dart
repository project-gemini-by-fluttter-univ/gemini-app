import 'package:flutter/material.dart';

import 'page_title.dart';
import 'photo.dart';
import 'buzz_button.dart';
import 'select_photo_button.dart';

class GeminiApp extends StatelessWidget {
  const GeminiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PageTitle(),
                    SizedBox(),
                  ],
                ),
                Photo(),
                SizedBox(),
                BuzzButton(),
                SelectPhotoButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
