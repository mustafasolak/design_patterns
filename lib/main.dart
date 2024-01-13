import 'package:design_patterns/widgets/abstract_factory_design/widget_abstract_factory_design.dart';
import 'package:design_patterns/widgets/factory_design/widget_factory_design_pattern.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: DesignPatternsApp(),
    ),
  );
}

class DesignPatternsApp extends StatefulWidget {
  const DesignPatternsApp({super.key});

  @override
  State<DesignPatternsApp> createState() => _DesignPatternsAppState();
}

class _DesignPatternsAppState extends State<DesignPatternsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Design Patterns"),
      ),

      body: const AbstractFactoryDesign()
    );
  }
}
