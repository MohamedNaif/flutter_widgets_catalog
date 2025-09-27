
// Animation Page
import 'package:flutter/material.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({super.key});

  final List<String> widgets = const [
    'AnimatedContainer',
    'AnimatedOpacity',
    'AnimatedPositioned',
    'AnimationController',
    'Hero',
    'TweenAnimationBuilder',
    'AnimatedBuilder',
    'SlideTransition',
    'FadeTransition',
    'ScaleTransition',
    'RotationTransition',
    'AnimatedSwitcher',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation and Motion'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(children: []),
    );
  }
}
