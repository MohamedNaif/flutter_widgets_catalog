import 'package:flutter/material.dart';

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
      title: 'Animation and motion',
      subtitle: 'Bring animations to your app.',
      icon: Icons.animation,
      pageBuilder: AnimationPage.new,
    ),
    _Section(
      title: 'Assets, images, and icons',
      subtitle: 'Manage assets, display images, and show icons.',
      icon: Icons.image_outlined,
      pageBuilder: AssetsPage.new,
    ),
    _Section(
      title: 'Async',
      subtitle: 'Widgets supporting async patterns in your Flutter apps.',
      icon: Icons.timer_outlined,
      pageBuilder: AsyncPage.new,
    ),
    _Section(
      title: 'Basics',
      subtitle: 'Widgets to know before building your first Flutter app.',
      icon: Icons.extension_outlined,
      pageBuilder: BasicsPage.new,
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

// Accessibility Page
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
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Animation Page
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
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Assets Page
class AssetsPage extends StatelessWidget {
  const AssetsPage({super.key});

  final List<String> widgets = const [
    'Image',
    'Image.asset',
    'Image.network',
    'Icon',
    'ImageIcon',
    'AssetBundle',
    'NetworkImage',
    'DecorationImage',
    'FadeInImage',
    'CachedNetworkImage',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets, Images, and Icons'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Async Page
class AsyncPage extends StatelessWidget {
  const AsyncPage({super.key});

  final List<String> widgets = const [
    'FutureBuilder',
    'StreamBuilder',
    'ConnectionState',
    'AsyncSnapshot',
    'CircularProgressIndicator',
    'LinearProgressIndicator',
    'RefreshIndicator',
    'FutureProvider',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Async'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Basics Page
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
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Input Page
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
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Interaction Page
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
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Layout Page
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
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Painting Page
class PaintingPage extends StatelessWidget {
  const PaintingPage({super.key});

  final List<String> widgets = const [
    'CustomPaint',
    'CustomPainter',
    'ClipRect',
    'ClipRRect',
    'ClipOval',
    'ClipPath',
    'Opacity',
    'Transform',
    'ColorFilter',
    'BackdropFilter',
    'ShaderMask',
    'DecoratedBox',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painting and Effects'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Scrolling Page
class ScrollingPage extends StatelessWidget {
  const ScrollingPage({super.key});

  final List<String> widgets = const [
    'ListView',
    'GridView',
    'SingleChildScrollView',
    'PageView',
    'CustomScrollView',
    'SliverAppBar',
    'SliverList',
    'SliverGrid',
    'NestedScrollView',
    'RefreshIndicator',
    'Scrollbar',
    'NotificationListener',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrolling'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Styling Page
class StylingPage extends StatelessWidget {
  const StylingPage({super.key});

  final List<String> widgets = const [
    'Theme',
    'ThemeData',
    'Material',
    'Card',
    'Divider',
    'DecoratedBox',
    'BoxDecoration',
    'MediaQuery',
    'LayoutBuilder',
    'OrientationBuilder',
    'ColorScheme',
    'TextTheme',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styling'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Text Page
class TextPage extends StatelessWidget {
  const TextPage({super.key});

  final List<String> widgets = const [
    'Text',
    'RichText',
    'TextSpan',
    'SelectableText',
    'TextField',
    'TextStyle',
    'DefaultTextStyle',
    'Text.rich',
    'AutoSizeText',
    'TextButton',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _buildWidgetList(context, widgets),
    );
  }
}

// Helper function to build widget list
Widget _buildWidgetList(BuildContext context, List<String> widgets) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Widgets in this category:',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: widgets.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Selected: ${widgets[index]}'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        widgets[index],
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
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
