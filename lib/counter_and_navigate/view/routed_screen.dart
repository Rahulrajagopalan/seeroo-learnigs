import 'package:flutter/material.dart';

class RoutedScreen extends StatelessWidget {
  const RoutedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Navigated BLoC"),
      ),
    );
  }
}