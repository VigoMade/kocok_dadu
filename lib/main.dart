import 'package:flutter/material.dart';
import 'package:course1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.greenAccent,
          Colors.redAccent,
        ),
      ),
    ),
  );
}
