import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/models/character/character_model.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(
      {super.key, required this.character, this.size = const Size(230, 230)});
  final Character character;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.of(context).pushNamed('/character', arguments: character),
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: CachedNetworkImageProvider(
                "${character.thumbnail?.path}.${character.thumbnail?.extension}"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.075),
                Colors.black.withOpacity(.015)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
