


// Assets Page
import 'package:flutter/material.dart';

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
      body: Column(children: []),
    );
  }
}
