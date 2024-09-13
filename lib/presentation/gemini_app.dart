import 'package:flutter/material.dart';

class GeminiApp extends StatelessWidget {
  const GeminiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  "あなたのバズをお助け！",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "BUZZ-AI",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 60.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "キーワードでバズる",
                    style: TextStyle(
                        color: Colors.white,
                 style: ElevatedButton.styleFrom(
                      fixedSize: Size(240, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      backgroundColor: Colors.blue)),
                          fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
             SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '画像でバズる',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(240, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      backgroundColor: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
