
// Layout Page
import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  final List<String> widgets = const [
    'Column',
    'Row',
    'Stack',
    'GridView',
    'ListView',
    'Wrap',
    'Flow',
    'Table',
    'Flex',
    'IndexedStack',
    'LayoutBuilder',
    'AspectRatio',
    'FractionallySizedBox',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column( children: []),
    );
  }
}
