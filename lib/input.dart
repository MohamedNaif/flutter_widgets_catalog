// Input Page
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _lastKey = "No key pressed yet";
  static const List<String> _options = <String>[
    'Apple',
    'Banana',
    'Orange',
    'Mango',
    'Watermelon',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<String>.empty();
                }
                return _options.where((String option) {
                  return option.toLowerCase().contains(
                    textEditingValue.text.toLowerCase(),
                  );
                });
              },
              onSelected: (String selection) {
                debugPrint('You selected: $selection');
              },
            ),
          ),

          KeyboardListener(
            focusNode: FocusNode()..requestFocus(),
            onKeyEvent: (KeyEvent event) {
              if (event is KeyDownEvent) {
                setState(() {
                  _lastKey = "Pressed: ${event.logicalKey.keyLabel}";
                });
              }
            },
            child: Text(_lastKey, style: const TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
