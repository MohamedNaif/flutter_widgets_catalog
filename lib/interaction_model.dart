
// Interaction Page
import 'package:flutter/material.dart';

class InteractionPage extends StatelessWidget {
  const InteractionPage({super.key});

  final List<String> widgets = const [
    'GestureDetector',
    'InkWell',
    'InkResponse',
    'Navigator',
    'MaterialPageRoute',
    'Dismissible',
    'Draggable',
    'DragTarget',
    'LongPressDraggable',
    'InteractiveViewer',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interaction Models'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column( children: []),
    );
  }
}
