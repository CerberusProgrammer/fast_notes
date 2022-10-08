import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fast Notes'),
      ),
      body: const Center(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add a note',
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
