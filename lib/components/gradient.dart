import 'package:flutter/material.dart';

class MyGradient extends StatelessWidget {
  final Widget myWidget;

  const MyGradient({super.key, required this.myWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple,
            Colors.deepPurple,
          ],
        ),
      ),
      child: myWidget,
    );
  }
}
