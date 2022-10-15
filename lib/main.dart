import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Custom Form Builder',
      home: HomeScreen(),
    );
  }
}
