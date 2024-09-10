import 'package:flutter/material.dart';

class KeywordAnswer extends StatelessWidget {
  const KeywordAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(32.0),
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
              TextField(
                controller: TextEditingController(
                  text: '富士山頂で釣り！？標高3776mで何が釣れるの？まさか、雲とか？ #富士山 #釣り #妄想旅行',
                ),
                minLines: 10,
                maxLines: null,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('TOPへ戻る'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
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
