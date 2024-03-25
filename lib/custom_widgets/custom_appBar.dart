import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0.2),
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'sycamore',
        style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 28,
          fontFamily: 'InknutAntiqua',
          color: Color(0xffA8D4D3),
        ),
      ),
    );
  }
}
