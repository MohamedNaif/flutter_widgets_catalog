import 'package:flutter/material.dart';
import 'package:flutter_widgets_catalog/accessibility.dart';
import 'package:flutter_widgets_catalog/input.dart';
import 'package:flutter_widgets_catalog/interaction_model.dart';
import 'package:flutter_widgets_catalog/layout.dart';
import 'package:flutter_widgets_catalog/paintiong_effects.dart';
import 'package:flutter_widgets_catalog/scrolling.dart';
import 'package:flutter_widgets_catalog/styling.dart';
import 'package:flutter_widgets_catalog/text.dart';

void main() {
  runApp(const NewWidgetsColumnApp());
}

class NewWidgetsColumnApp extends StatelessWidget {
  const NewWidgetsColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Widgets Column',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const NewWidgetsColumnPage(),
    );
  }
}

class NewWidgetsColumnPage extends StatefulWidget {
  const NewWidgetsColumnPage({super.key});

  @override
  State<NewWidgetsColumnPage> createState() => _NewWidgetsColumnPageState();
}

class _NewWidgetsColumnPageState extends State<NewWidgetsColumnPage> {
  static const List<_Section> _sections = [
    _Section(
      title: 'Accessibility',
      subtitle: 'Make your app accessible.',
      icon: Icons.accessibility_new,
      pageBuilder: AccessibilityPage.new,
    ),

    _Section(
      title: 'Input',
      subtitle: 'Take user input with Material and Cupertino.',
      icon: Icons.input_outlined,
      pageBuilder: InputPage.new,
    ),
    _Section(
      title: 'Interaction models',
      subtitle: 'Respond to touch events and route users.',
      icon: Icons.touch_app_outlined,
      pageBuilder: InteractionPage.new,
    ),
    _Section(
      title: 'Layout',
      subtitle: 'Arrange widgets in rows, columns, grids, and more.',
      icon: Icons.dashboard_customize_outlined,
      pageBuilder: LayoutPage.new,
    ),
    _Section(
      title: 'Painting and effects',
      subtitle: 'Apply visual effects without changing layout.',
      icon: Icons.brush_outlined,
      pageBuilder: PaintingPage.new,
    ),
    _Section(
      title: 'Scrolling',
      subtitle: 'Scroll multiple widgets as children of the parent.',
      icon: Icons.swap_vert,
      pageBuilder: ScrollingPage.new,
    ),
    _Section(
      title: 'Styling',
      subtitle: 'Manage the theme and make your app responsive.',
      icon: Icons.style_outlined,
      pageBuilder: StylingPage.new,
    ),
    _Section(
      title: 'Text',
      subtitle: 'Display and style text.',
      icon: Icons.text_fields_outlined,
      pageBuilder: TextPage.new,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Base widgets')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: _sections.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 360,
            mainAxisExtent: 140,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final s = _sections[index];
            return _SectionCard(section: s);
          },
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.section});

  final _Section section;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => section.pageBuilder()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(section.icon, size: 28),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      section.title,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Text(
                  section.subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Section {
  const _Section({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.pageBuilder,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Widget Function() pageBuilder;
}
