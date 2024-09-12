import 'package:flutter/material.dart';

class SelectPhotoPage extends StatelessWidget {
  const SelectPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              Image.asset('images/cat.png'),
              const SizedBox(),
              ElevatedButton(
                onPressed: () {},
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(120, double.infinity),
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
      ),
    );
  }
}
