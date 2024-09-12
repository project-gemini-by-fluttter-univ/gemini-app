import 'package:flutter/material.dart';

class SelectPhotoButton extends StatelessWidget {
  const SelectPhotoButton({super.key});

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
        '画像選択',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
