import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '画像を選択！',
      style: TextStyle(color: Color(0xFF19AAE8), fontSize: 24),
    );
  }
}
