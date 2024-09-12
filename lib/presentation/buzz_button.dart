import 'package:flutter/material.dart';

class BuzzButton extends StatelessWidget {
  const BuzzButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
