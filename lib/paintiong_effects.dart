// Painting Page
import 'dart:ui';

import 'package:flutter/material.dart';

class PaintingPage extends StatelessWidget {
  const PaintingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painting and Effects'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // 1️⃣ BackdropFilter Example
          Card(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://picsum.photos/400/200",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.black.withValues(alpha: 0.2),
                    alignment: Alignment.center,
                    child: const Text(
                      "BackdropFilter (Blur Effect)",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // 2️⃣ CustomPaint Example
          Card(
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: CustomPaint(
                painter: ShapesPainter(),
                child: const Center(
                  child: Text(
                    "CustomPaint (Draw Shapes)",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // 3️⃣ Transform Example
          Card(
            child: Container(
              height: 200,
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: 0.2, // rotate 0.2 rad ≈ 11.5°
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text(
                    "Transform (Rotate)",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 🎨 Custom Painter for drawing shapes
class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    // Draw a circle
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, paint);

    // Draw a line
    final linePaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 5;
    canvas.drawLine(
      const Offset(20, 20),
      Offset(size.width - 20, size.height - 20),
      linePaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
