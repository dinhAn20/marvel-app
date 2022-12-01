import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const Marvel());
}

class Marvel extends StatelessWidget {
  const Marvel({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
