// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:convert';

import 'package:crypto/crypto.dart';

class Helper {
  static String publicApiKey = "24dceef7f091d186922b7d1493305159";
  static String privateApiKey = "9b130a0e11a61a584ac62b1e16fb5fc6e6868ad8";
}

var url = "http://gateway.marvel.com/v1/public/";
var timeStamp = DateTime.now();
String hash = "";

String gerarUrl(String assunto, {String adicional = ""}) {
  gerarHash();
  String urlFinal =
      "$url$assunto?ts=${timeStamp.toIso8601String()}&apikey=${Helper.publicApiKey}&hash=$hash$adicional";
  print(urlFinal);
  return urlFinal;
}

gerarHash() {
  hash = generateMd5(
      timeStamp.toIso8601String() + Helper.privateApiKey + Helper.publicApiKey);
  print(hash);
}

String generateMd5(String input) {
  return md5.convert(utf8.encode(input)).toString();
}
