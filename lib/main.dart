import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Fast Notes',
    theme: ThemeData(
      primarySwatch: Colors.amber,
      useMaterial3: true,
    ),
    home: const Home(),
  ));
}
