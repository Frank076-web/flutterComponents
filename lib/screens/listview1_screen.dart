import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      "Megaman",
      "Metal Gear",
      "Super Smash",
      "Final Fantasy"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      body: ListView(
        children: [
          ...options
              .map((name) => ListTile(
                    title: Text(name),
                    trailing: const Icon(Icons.arrow_circle_right_outlined),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
