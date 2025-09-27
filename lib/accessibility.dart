
// Accessibility Page
import 'package:flutter/material.dart';

class AccessibilityPage extends StatelessWidget {
  const AccessibilityPage({super.key});

  final List<String> widgets = const [
    'Semantics',
    'ExcludeSemantics',
    'MergeSemantics',
    'Tooltip',
    'Focus',
    'FocusScope',
    'FocusNode',
    'ExcludeFocus',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessibility'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Column(
        children: [
        ],
      ),
    );
  }
}
