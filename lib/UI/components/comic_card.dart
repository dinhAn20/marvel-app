import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/core/styles.dart';
import 'package:marvel_app/models/comic/comic_model.dart';

class ComicCard extends StatelessWidget {
  const ComicCard(
      {super.key, required this.comic, this.size = const Size(230, 230)});
  final Comic comic;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: CachedNetworkImageProvider(
                "${comic.thumbnail?.path}.${comic.thumbnail?.extension}"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(0, 0, 0, 0), Color.fromARGB(1, 0, 0, 0)],
            ),
          ),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      comic.title,
                      style: textStyleHeavy20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
