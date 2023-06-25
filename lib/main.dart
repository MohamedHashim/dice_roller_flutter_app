import 'package:flutter/material.dart';
import 'package:flutte_testr_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    ),
  );
}

//(Color.fromARGB(255, 138, 92, 22),
            // Color.fromARGB(255, 39, 226, 226))