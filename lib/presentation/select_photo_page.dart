import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gemini_app/presentation/image_answer_page.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class SelectPhotoPage extends StatefulWidget {
  const SelectPhotoPage({super.key, required this.model});

  final GenerativeModel model;

  @override
  State<SelectPhotoPage> createState() => _SelectPhotoPageState();
}

class _SelectPhotoPageState extends State<SelectPhotoPage> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '画像を選択！',
                  style: TextStyle(color: Color(0xFF19AAE8), fontSize: 24),
                ),
                SizedBox(),
              ],
            ),
            if (image == null)
              Container(
                height: 104,
                width: 320,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.lightBlue, width: 1),
                ),
              )
            else
              Image.file(
                File(image!.path),
                width: 270,
                height: 180,
                fit: BoxFit.cover,
              ),
            const SizedBox(),
            ElevatedButton(
              onPressed: () async {
                final picker = ImagePicker();
                image = await picker.pickImage(source: ImageSource.gallery);
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(120, double.infinity),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: const Color(0xFF19AAE8),
              ),
              child: const Text(
                '画像選択',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: image?.path == null
                  ? null
                  : () async {
                      final imageUlist = await File(image!.path).readAsBytes();

                      if (!context.mounted) {
                        return;
                      }

                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ImageAnswerPage(
                                  model: widget.model,
                                  imageUlist: imageUlist,
                                  extension: extension(image!.path),
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
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
