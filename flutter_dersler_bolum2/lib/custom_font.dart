import 'package:flutter/material.dart';

class CustomFontss extends StatelessWidget {
  const CustomFontss({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Custom Fonts Test',
        style: TextStyle(fontFamily: 'Elyazisi', fontSize: 24),
      ),
    );
  }
}
