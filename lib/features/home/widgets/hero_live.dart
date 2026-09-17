import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart' as corecolors; 

// Assuming you have these constants defined. 
// If not, I've used standard Colors below but kept the naming logic.


class FeaturedNewsCard extends StatelessWidget {
  const FeaturedNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // 1. MAIN HERO (TOP SECTION)
                _buildLiveHeroCard(
                  imageUrl: "https://picsum.photos/400/300?native=1",
                  title: "India-US Trade Deal Hit By A 'Trump'block: US President Plays Hardball, PM Modi Says...",
                  description: "US President Donald Trump seems to playing hardball, threatening India not just with high tariffs but also...",
                  time: "1 WEEK AGO",
                ),

                // 2. HERO GRID (BOTTOM SECTION - HORIZONTAL)
                _buildHeroBottomGrid(),

                const Divider(thickness: 1, color: corecolors.AppColors.sectionDivider),
                const SizedBox(height: 20),

                // 3. SECONDARY NEWS (TEXT ONLY)
                _buildTextNews(
                  title: "IED Blast Severely Injures 2 CRPF Personnel In Jharkhand: Which Maoist Leaders Are Still Active?",
                  description: "Two jawans of the CRPF's elite CoBRA unit were seriously injured in an improvised explosive device (IED) blast set off by...",
                  time: "1 WEEK AGO",
                  category: "PARAMILITARY",
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(thickness: 1, color: corecolors.AppColors.sectionDivider),
                ),

                // 4. TERTIARY NEWS (IMAGE + TEXT)
                _buildImageNews(
                  imageUrl: "https://picsum.photos/400/300?parmilitary=1",
                  title: "Trump's Tariffs Bring India-Russia Closer: PM Modi Talks To Putin Ahead Of His India Visit",
                  description: "Amid US President Donald Trump's growing tantrums on tariffs, Prime Minister Narendra Modi talked to Russian President Vladimir Putin on a...",
                  time: "1 WEEK AGO",
                  category: "LATEST NEWS",
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- WIDGET: HERO TOP SECTION ---
  Widget _buildLiveHeroCard({
    required String imageUrl,
    required String title,
    required String description,
    required String time,
  }) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl,
            height: 280,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black.withOpacity(0.1), Colors.black.withOpacity(0.8)],
            ),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _buildBadge("LIVE", corecolors.AppColors.primaryRed, isLive: true),
                  const SizedBox(width: 8),
                  _buildBadge("LATEST NEWS", Colors.white.withOpacity(0.3)),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w900, height: 1.2),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 14, height: 1.3),
              ),
              const SizedBox(height: 10),
              Text(time, style: const TextStyle(color: Colors.white60, fontSize: 11, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }

  // --- WIDGET: HERO BOTTOM GRID (HORIZONTAL) ---
  Widget _buildHeroBottomGrid() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
_buildSmallCard(
  imageUrl: "https://picsum.photos/400/300?missile=1",
  title: "Pralay Missile Test: Greater Speed, Bigger Payload",
  description: "Hindi for 'Apocalypse', the DRDO has conducted 2 consecutive...",
  time: "1 WEEK AGO",
  category: "DEFENCE INDUSTRY",
),

_buildSmallCard(
  imageUrl: "https://picsum.photos/400/300?military=1",
  title: "Russian Analyst Warns of Risks in India Acquiring F-35",
  description: "India faces potential operational and sovereignty risks if it...",
  time: "1 WEEK AGO",
  category: "MILITARY",
),

_buildSmallCard(
  imageUrl: "https://picsum.photos/400/300?air-force=1",
  title: "S-400 Destroyed 5 Pak Air Force Fighter Jets",
  description: "India's retaliatory Operation Sindoor against Pakistan was successful...",
  time: "1 WEEK AGO",
  category: "AIR FORCE",
),
        ],
      ),
    );
  }

  // --- WIDGET: SMALL GRID CARD ---
  Widget _buildSmallCard({
    required String imageUrl,
    required String title,
    required String description,
    required String time,
    required String category,
  }) {
    return SizedBox(
      width: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(imageUrl, height: 150, width: 260, fit: BoxFit.cover),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900, height: 1.2, color: corecolors.AppColors.textBlack),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 13, color: corecolors.AppColors.textGrey, height: 1.3),
          ),
          const SizedBox(height: 12),
          _buildFooter(time, category),
        ],
      ),
    );
  }

  // --- HELPERS ---
  Widget _buildBadge(String text, Color color, {bool isLive = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isLive) const Padding(padding: EdgeInsets.only(right: 4), child: Icon(Icons.circle, color: Colors.white, size: 10)),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w900)),
        ],
      ),
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

  Widget _buildTextNews({required String title, required String description, required String time, required String category}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.1, color: corecolors.AppColors.textBlack)),
        const SizedBox(height: 12),
        Text(description, style: const TextStyle(fontSize: 15, color: corecolors.AppColors.textGrey, height: 1.4)),
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
          child: Image.network(imageUrl, height: 200, width: double.infinity, fit: BoxFit.cover),
        ),
        const SizedBox(height: 16),
        Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900, height: 1.1, color: corecolors.AppColors.textBlack)),
        const SizedBox(height: 8),
        Text(description, style: const TextStyle(fontSize: 15, color: corecolors.AppColors.textGrey, height: 1.4)),
        const SizedBox(height: 12),
        _buildFooter(time, category),
      ],
    );
  }
}