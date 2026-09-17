import 'package:flutter/material.dart';

class InterviewsSection extends StatelessWidget {
  const InterviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader("INTERVIEWS", Colors.red),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network("https://picsum.photos/400/300?interviews=1", height: 200, width: double.infinity, fit: BoxFit.cover),
          ),
          const SizedBox(height: 12),
          const Text(
            "DRDO to Develop BrahMos-NG After Operation Sindoor Success",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text("India's Defence Research and Development Organisation (DRDO) will soon begin...", 
            style: TextStyle(color: Colors.grey, fontSize: 14)),
          const Divider(height: 30),
          _buildSimpleLink("Thailand Cambodia At Conflict Again? 3 Thai Soldiers Injured...", "4 days ago"),
          const Divider(height: 30),
          _buildSimpleLink("NSA Doval Meets Russia's First Dy PM, Meeting With China FM Soon...", "4 days ago"),
        ],
      ),
    );
  }

  Widget _buildSimpleLink(String title, String time) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        const SizedBox(height: 4),
        Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
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