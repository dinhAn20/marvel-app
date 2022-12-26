import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/UI/components/character_card.dart';
import 'package:marvel_app/models/character/character_model.dart';

class CharacterListView extends StatefulWidget {
  const CharacterListView({
    Key? key,
    required this.characters,
  }) : super(key: key);
  final List<Character> characters;

  @override
  State<CharacterListView> createState() => _CharacterListViewState();
}

class _CharacterListViewState extends State<CharacterListView> {
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
              itemCount: widget.characters.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: CharacterCard(
                    character: widget.characters[index],
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
