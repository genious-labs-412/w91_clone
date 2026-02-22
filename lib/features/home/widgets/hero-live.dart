import 'package:flutter/material.dart';

class FeaturedNewsCard extends StatelessWidget {
  const FeaturedNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- NEW LIVE HERO SECTION ---
          _buildLiveHeroCard(
            imageUrl: "assets/images/news.jpeg",
            title: "India-US Trade Deal Hit By A 'Trump'block: US President Plays Hardball, PM Modi Says...",
            description: "US President Donald Trump seems to playing hardball, threatening India not just with high tariffs but also...",
            time: "1 WEEK AGO",
          ),
          
          const SizedBox(height: 25),

          // Item 2: Text Only
          _buildTextNews(
            title: "IED Blast Severely Injures 2 CRPF Personnel In Jharkhand: Which Maoist Leaders Are Still Active?",
            description: "Two jawans of the CRPF's elite CoBRA unit were seriously injured in an improvised explosive device (IED) blast set off by...",
            time: "1 WEEK AGO",
            category: "PARAMILITARY",
          ),
          
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(thickness: 1, color: Color(0xFFEEEEEE)),
          ),

          // Item 3: Image + Text (Standard Card)
          _buildImageNews(
            imageUrl: "assets/images/news.jpeg", 
            title: "Trump's Tariffs Bring India-Russia Closer: PM Modi Talks To Putin Ahead Of His India Visit",
            description: "Amid US President Donald Trump's growing tantrums on tariffs, Prime Minister Narendra Modi talked to Russian President Vladimir Putin on a...",
            time: "1 WEEK AGO",
            category: "LATEST NEWS",
          ),
        ],
      ),
    );
  }

  // --- THE LIVE HERO WIDGET ---
  Widget _buildLiveHeroCard({
    required String imageUrl,
    required String title,
    required String description,
    required String time,
  }) {
    return Stack(
      children: [
        // Background Image
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageUrl,
            height: 280,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        // Dark Gradient Overlay for text contrast
        Container(
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.8),
              ],
            ),
          ),
        ),
        // Content
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Badges Row
              Row(
                children: [
                  _buildBadge("LIVE", const Color(0xFFE30613), isLive: true),
                  const SizedBox(width: 8),
                  _buildBadge("LATEST NEWS", Colors.white.withOpacity(0.3)),
                ],
              ),
              const SizedBox(height: 12),
              // Title
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              // Description
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 10),
              // Time
              Text(
                time,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Helper for Badges (Live / Latest News)
  Widget _buildBadge(String text, Color color, {bool isLive = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isLive)
            const Padding(
              padding: EdgeInsets.only(right: 4),
              child: Icon(Icons.circle, color: Colors.white, size: 10),
            ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }

  // --- PREVIOUS WIDGETS ---
  Widget _buildTextNews({required String title, required String description, required String time, required String category}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900, height: 1.1, color: Colors.black, letterSpacing: -0.5)),
        const SizedBox(height: 12),
        Text(description, style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.4)),
        const SizedBox(height: 12),
        _buildFooter(time, category),
      ],
    );
  }

  Widget _buildImageNews({required String imageUrl, required String title, required String description, required String time, required String category}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imageUrl, height: 220, width: double.infinity, fit: BoxFit.cover),
        ),
        const SizedBox(height: 16),
        Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.1, color: Colors.black)),
        const SizedBox(height: 8),
        Text(description, style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.4)),
        const SizedBox(height: 12),
        _buildFooter(time, category),
      ],
    );
  }

  Widget _buildFooter(String time, String category) {
    return Row(
      children: [
        Text(time, style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 11)),
        const SizedBox(width: 8),
        Container(width: 1, height: 10, color: Colors.grey[300]),
        const SizedBox(width: 8),
        Text(category, style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 11)),
      ],
    );
  }
}