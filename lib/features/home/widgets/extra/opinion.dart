import 'package:flutter/material.dart';

class OpinionSection extends StatelessWidget {
  const OpinionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader("OPINION", Colors.green),
          const SizedBox(height: 16),
          _buildOpinionCard(
            "HUMA SIDDIQUI", 
            "The focus on heavy armor is a mistake. We need simpler, smarter, and cheaper swarms.",
          ),
          _buildOpinionCard(
            "SHASHWAT GUPTA RAY", 
            "Diplomacy isn't dead, but it's speaking a different language now—one of economic statecraft.",
          ),
        ],
      ),
    );
  }

  Widget _buildOpinionCard(String author, String quote) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(radius: 15, backgroundColor: Colors.grey),
              const SizedBox(width: 10),
              Text(author, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            "\"$quote\"",
            style: const TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

// --- SHARED HEADER HELPER ---
Widget _buildHeader(String title, Color color, {String actionText = "VIEW ALL >"}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
          Text(actionText, style: const TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.bold)),
        ],
      ),
      const SizedBox(height: 4),
      Container(height: 3, width: 60, color: color),
    ],
  );
}