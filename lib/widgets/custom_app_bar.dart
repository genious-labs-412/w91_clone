import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo
          Image.asset(
            "assets/images/logo.png",
            height: 40,
          ),

          // Icons
          Row(
            children: const [
              Icon(Icons.search),
              SizedBox(width: 15),
              Icon(Icons.dark_mode_outlined),
              SizedBox(width: 15),
              Icon(Icons.menu),
            ],
          )
        ],
      ),
    );
  }
}
