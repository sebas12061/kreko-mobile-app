import 'package:flutter/material.dart';

void main() {
  runApp(const KrekoApp());
}

class KrekoApp extends StatelessWidget {
  const KrekoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kreko',
      home: Scaffold(body: Center(child: Text('Kreko'))),
    );
  }
}
