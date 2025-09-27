
// Basics Page
import 'package:flutter/material.dart';

class BasicsPage extends StatelessWidget {
  const BasicsPage({super.key});

  final List<String> widgets = const [
    'Container',
    'Row',
    'Column',
    'Text',
    'Stack',
    'Scaffold',
    'AppBar',
    'Center',
    'Padding',
    'SizedBox',
    'Expanded',
    'Flexible',
    'Align',
    'Positioned',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basics'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Column( children: []),
    );
  }
}
