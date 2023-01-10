import 'package:flutter/material.dart';
import 'package:flutter_components/theme/AppTheme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primaryColor,
            ),
            title: Text("Soy un titulo"),
            subtitle: Text(
                "Sint deserunt qui eu et ullamco quis ipsum incididunt culpa minim esse in sint. Ad nisi esse dolor consectetur id elit laborum culpa cupidatat sunt ea do consequat. Enim sunt excepteur voluptate."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Ok"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
