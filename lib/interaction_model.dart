// Interaction Page
import 'package:flutter/material.dart';

class InteractionPage extends StatelessWidget {
  const InteractionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interaction Models'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // GestureDetector Example
          Card(
            child: GestureDetector(
              onTap: () {
                debugPrint("Box tapped!");
              },
              child: Container(
                height: 80,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "GestureDetector (Tap Me)",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // InkWell Example
          Card(
            child: InkWell(
              onTap: () {
                debugPrint("InkWell tapped!");
              },
              child: Container(
                height: 80,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "InkWell (Tap Me)",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Dismissible Example
          Card(
            child: Dismissible(
              key: const ValueKey("dismissible"),
              onDismissed: (direction) {
                debugPrint("Item dismissed!");
              },
              background: Container(color: Colors.red),
              child: Container(
                height: 80,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    "Dismissible (Swipe Me)",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Draggable Example
          Card(
            child: Draggable<String>(
              data: "Dragged!",
              feedback: Material(
                color: Colors.transparent,
                child: Container(
                  width: 120,
                  height: 80,
                  color: Colors.purple,
                  child: const Center(
                    child: Text(
                      "Dragging",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              childWhenDragging: Container(
                height: 80,
                color: Colors.grey,
                child: const Center(child: Text("Original Gone")),
              ),
              child: Container(
                height: 80,
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    "Draggable (Drag Me)",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // DragTarget Example
          Card(
            child: DragTarget<String>(
              onAcceptWithDetails: (data) {
                debugPrint("Received: $data");
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  height: 80,
                  color: candidateData.isEmpty
                      ? Colors.teal
                      : Colors.tealAccent,
                  child: const Center(
                    child: Text(
                      "DragTarget (Drop Here)",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
