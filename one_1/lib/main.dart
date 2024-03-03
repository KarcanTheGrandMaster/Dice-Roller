import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import 'package:one_1/style_text.dart';
import "package:one_1/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.orange, Colors.grey, Colors.black),
      ),
    ),
  );
}
