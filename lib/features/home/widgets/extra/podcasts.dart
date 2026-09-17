import 'package:flutter/material.dart';
class PodcastsSection extends StatelessWidget {
  const PodcastsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader("PODCASTS", Colors.purple, actionText: "LISTEN ALL >"),
          const SizedBox(height: 16),
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(child: Icon(Icons.play_circle_fill, color: Colors.purple, size: 50)),
          ),
          const SizedBox(height: 12),
          const Text("The New Space Race: Privatization & Policy", 
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          _buildPodcastTile("Defense Tech Roundup: New Drone Swarm Tactics", "24 mins ago"),
          _buildPodcastTile("Global Markets Update: Impact of Sanctions", "2 hours ago"),
        ],
      ),
    );
  }

  Widget _buildPodcastTile(String title, String time) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.mic_none, color: Colors.purple, size: 18),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildHeader(String title, Color color, {String? actionText}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
      if (actionText != null)
        Text(
          actionText,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
    ],
  );
}
}