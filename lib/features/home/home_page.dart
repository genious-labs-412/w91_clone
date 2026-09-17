import 'package:flutter/material.dart';
import 'widgets/date_bar.dart';
import 'widgets/breaking_banner.dart';
import 'widgets/hero_live.dart'; // This is the correct file import
import 'widgets/headline_section.dart';
import 'widgets/extra/interviews.dart';
import 'widgets/extra/expert_Analysis.dart';
import 'widgets/extra/podcasts.dart';
import 'widgets/extra/opinion.dart';

import '../../core/constants/colors.dart';          

import '../../widgets/custom_app_bar.dart';

// features/home/home_page.dart

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              const FeaturedNewsCard(), // This contains your Hero section
              
              // --- ADD THE NEW SECTIONS HERE ---
              const Divider(height: 40, thickness: 8, color: AppColors.sectionDivider),
              const InterviewsSection(),
              
              const Divider(height: 40, thickness: 8, color: AppColors.sectionDivider),
              const ExpertAnalysisSection(),
              
              const Divider(height: 40, thickness: 8, color: AppColors.sectionDivider),
              const PodcastsSection(),
              
              const Divider(height: 40, thickness: 8, color: AppColors.sectionDivider),
              const OpinionSection(),
              
              const SizedBox(height: 40), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }
}