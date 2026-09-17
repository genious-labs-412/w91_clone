import 'package:flutter/material.dart';

class ExpertAnalysisSection extends StatelessWidget {
  const ExpertAnalysisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader("EXPERT ANALYSIS", Colors.blue),
          const SizedBox(height: 16),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://picsum.photos/400/200?random=${DateTime.now().millisecondsSinceEpoch}",
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  color: Colors.amber,
                  child: const Text("PREMIUM",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          const Text("Decoding the South China Sea Strategy: A Deep Dive",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          _buildAuthorLink(
              "Why Hypersonic Missiles Change the Calculus of Deterrence",
              "HIMANSHI SINGH"),
          const Divider(height: 30),
          _buildAuthorLink(
              "The Economic Impact of the New Trade Routes", "PRAKHYA SINGH"),
        ],
      ),
    );
  }

  Widget _buildAuthorLink(String title, String author) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        const SizedBox(height: 8),
        Row(
          children: [
            const CircleAvatar(radius: 10, backgroundColor: Colors.grey),
            const SizedBox(width: 8),
            Text(author,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)),
          ],
        ),
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
