import 'package:flutter/material.dart';

class KeywordAnswer extends StatelessWidget {
  const KeywordAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
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
              Container(
                height: 300,
                width: 300,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.lightBlue),
                ),
                child: const Text(
                    '富士山頂で釣り！？標高3776mで何が釣れるの？まさか、雲とか？ #富士山 #釣り #妄想旅行'),
              ),
              ElevatedButton(
                onPressed: () {},
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
    );
  }
}
