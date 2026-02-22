import 'package:flutter/material.dart';
import 'widgets/date_bar.dart';
import 'widgets/breaking_banner.dart';
import 'widgets/hero-live.dart'; // This is the correct file import
import 'widgets/headline_section.dart';
import '../../widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override // Fixed the typo here
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Changed to white to match your image
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DateBar(),
              const CustomAppBar(),
              const SizedBox(height: 10),
              const BreakingBanner(),
              const SizedBox(height: 15),
              const HeadlineSection(),
              const FeaturedNewsCard(), // Now this will work!
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}