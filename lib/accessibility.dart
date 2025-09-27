// Accessibility Page
import 'package:flutter/material.dart';

class AccessibilityPage extends StatelessWidget {
  const AccessibilityPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessibility'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Semantics(
            label: "زر لشراء المنتج",
            hint: "اضغط هنا لإضافة المنتج إلى السلة",
            button: true,
            child: ElevatedButton(onPressed: () {}, child: const Text("Buy")),
          ),

          ExcludeSemantics(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Invisible to screen reader"),
            ),
          ),

          MergeSemantics(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("5", style: TextStyle(fontSize: 40, color: Colors.amber)),
                Icon(Icons.star, color: Colors.amber),
                Text("reviews"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
