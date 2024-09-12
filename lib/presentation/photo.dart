import 'package:flutter/material.dart';

// import 'image/cat.png';

class Photo extends StatelessWidget {
  const Photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/cat.png');
  }
}
