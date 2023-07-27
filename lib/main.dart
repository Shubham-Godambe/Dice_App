import 'package:dice/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const dice());
}

// ignore: camel_case_types
class dice extends StatelessWidget {
  const dice({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice app",
      home: home(),
    );
  }
}
