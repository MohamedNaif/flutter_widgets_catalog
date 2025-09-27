// Input Page
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  final List<String> widgets = const [
    'TextField',
    'TextFormField',
    'Form',
    'Checkbox',
    'Radio',
    'Switch',
    'Slider',
    'DropdownButton',
    'DatePicker',
    'TimePicker',
    'RangeSlider',
    'ToggleButtons',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(children: []),
    );
  }
}
