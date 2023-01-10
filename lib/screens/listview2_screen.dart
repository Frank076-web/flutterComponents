import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  const ListViewScreen2({Key? key}) : super(key: key);

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
        title: const Text("ListView Tipo 2"),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(
            Icons.arrow_circle_right_outlined,
            color: Colors.indigo,
          ),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
