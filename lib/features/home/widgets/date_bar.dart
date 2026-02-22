import 'package:flutter/material.dart';

class DateBar extends StatelessWidget {
  const DateBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: Color.fromARGB(255, 197, 200, 202), // dark blue shade
      child: const Text(
        "Friday, 20 February 2026",
        style: TextStyle(
          color: Color.fromARGB(255, 34, 32, 32),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}