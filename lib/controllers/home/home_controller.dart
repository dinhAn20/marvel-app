import 'dart:convert';

import 'package:get/get.dart';
import 'package:marvel_app/_internal/enum/enum.dart';
import 'package:marvel_app/models/character/character_model.dart';
import 'package:marvel_app/models/comic/comic_model.dart';
import 'package:marvel_app/service/helper.dart';

class HomeController extends GetxController {
  RxList<Character> characters = RxList<Character>();
  RxList<Comic> comics = RxList<Comic>();
  @override
  void onInit() {
    init();
    super.onInit();
  }

  init() async {
    await getListContent(APIMethod.characters);
    await getListContent(APIMethod.comics);
  }

  getListContent(APIMethod apiMethod, {String adicional = ""}) async {
    String urlFinal = gerarUrl(apiMethod.name, adicional: adicional);
    var v = await makeQuery(urlFinal);
    var results = jsonDecode(v.body)["data"]["results"];
    if (v.statusCode == 200) {
      if (apiMethod == APIMethod.characters) {
        characters.clear();
        for (var e in results) {
          var item = Character.fromJson(e);
          characters.add(item);
        }
      } else if (apiMethod == APIMethod.comics) {
        comics.clear();
        for (var e in results) {
          var item = Comic.fromJson(e);
          comics.add(item);
        }
      }
    }
  }

  getCharacterById(int id) async {
    String urlFinal = gerarUrl("characters/$id");
    var v = await makeQuery(urlFinal);
    var results = jsonDecode(v.body)["data"]["results"];
    if (v.statusCode == 200) {}
  }
}
