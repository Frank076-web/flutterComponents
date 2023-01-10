import 'package:flutter/material.dart';

import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                "https://images.pexels.com/photos/15286/pexels-photo.jpg?cs=srgb&dl=pexels-luis-del-r%C3%ADo-15286.jpg&fm=jpg",
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                "https://www.ngenespanol.com/wp-content/uploads/2022/12/cual-es-el-origen-del-arbol-de-navidad-y-como-se-hizo-una-tradicion-1.jpg",
            name: "Navidad",
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
