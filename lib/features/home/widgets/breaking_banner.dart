import 'package:flutter/material.dart';

class BreakingBanner extends StatelessWidget {
  const BreakingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Stack(
          children: [
            // 1. Red Slanted Background
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              width: 130, // Adjust width of the red section
              child: CustomPaint(
                painter: SlantedPainter(),
              ),
            ),

            // 2. The Content Row
            Row(
              children: [
                const SizedBox(width: 12),
                // "BREAKING" Section
                const Icon(Icons.circle, color: Colors.white, size: 10),
                const SizedBox(width: 8),
                const Text(
                  "BREAKING",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 13,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(width: 25), // Space for the slant
                
                // News Text Section
                const Expanded(
                  child: Text(
                    "India and US accelerate defense ind...",
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            // 3. Red Bottom Accent Line
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 2,
                color: const Color(0xFFD30000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SlantedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFD30000)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.lineTo(size.width - 20, 0); // Top right (before slant)
    path.lineTo(size.width, size.height); // Bottom right (end of slant)
    path.lineTo(0, size.height); // Bottom left
    path.close();

    canvas.drawPath(path, paint);
    
    // Optional: Draw the tiny dots pattern here if needed using a loop
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}