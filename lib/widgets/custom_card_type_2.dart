import 'package:flutter/material.dart';
import 'package:flutter_components/theme/AppTheme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({
    super.key,
    this.imageUrl =
        "https://petapixel.com/assets/uploads/2021/06/Social-Medias-Impact-on-Landscape-and-Nature-Photography.jpg",
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      shadowColor: AppTheme.primaryColor.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            alignment: Alignment.bottomCenter,
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
              alignment: AlignmentDirectional.centerEnd,
              child: Text(name!),
            ),
        ],
      ),
    );
  }
}
