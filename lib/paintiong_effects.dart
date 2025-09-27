
// Painting Page
import 'package:flutter/material.dart';

class PaintingPage extends StatelessWidget {
  const PaintingPage({super.key});

  final List<String> widgets = const [
    'CustomPaint',
    'CustomPainter',
    'ClipRect',
    'ClipRRect',
    'ClipOval',
    'ClipPath',
    'Opacity',
    'Transform',
    'ColorFilter',
    'BackdropFilter',
    'ShaderMask',
    'DecoratedBox',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painting and Effects'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column( children: [],)
    );
  }
}