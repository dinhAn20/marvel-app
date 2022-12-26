import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/UI/components/character_card.dart';
import 'package:marvel_app/UI/components/comic_card.dart';
import 'package:marvel_app/_internal/enum/enum.dart';
import 'package:marvel_app/controllers/home/home_controller.dart';

class ThumnailListView extends StatefulWidget {
  const ThumnailListView({
    Key? key,
    required this.homeController,
    required this.type,
  }) : super(key: key);
  final HomeController homeController;
  final APIMethod type;

  @override
  State<ThumnailListView> createState() => _ThumnailListViewState();
}

class _ThumnailListViewState extends State<ThumnailListView> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          AnimatedContainer(
            height: 230,
            duration: const Duration(milliseconds: 400),
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.type == APIMethod.characters
                  ? widget.homeController.characters.length
                  : widget.homeController.comics.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: widget.type == APIMethod.characters
                      ? CharacterCard(
                          character: widget.homeController.characters[index],
                        )
                      : ComicCard(
                          comic: widget.homeController.comics[index],
                        ),
                );
              },
            ),
          ),
        ],
      );
    });
  }
}
