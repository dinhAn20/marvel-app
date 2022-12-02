import 'dart:convert';

import 'package:get/get.dart';
import 'package:marvel_app/models/character_model.dart';
import 'package:marvel_app/service/helper.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  RxList<Character> characters = RxList<Character>();

  getListCharacters() {
    String urlFinal = gerarUrl("characters");
    final uri = Uri.parse(urlFinal);
    http.get(uri).then((v) {
      var results = jsonDecode(v.body)["data"]["results"];
      if (v.statusCode == 200) {
        characters.clear();
        for (var e in results) {
          var character = Character.fromJson(e);
          characters.add(character);
        }
      }
    });
  }

  getCharacterById(int id) {
    String urlFinal = gerarUrl("characters/$id");
    final uri = Uri.parse(urlFinal);
    http.get(uri).then((v) {
      if (v.statusCode == 200) {}
    });
  }
}
