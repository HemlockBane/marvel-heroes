import 'dart:async';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';

import 'package:marvel_heroes/src/constants/api_keys.dart';
import '../models/character_data_wrapper.dart';
import '../models/character_data_container.dart';
import 'package:marvel_heroes/src/constants/constants.dart';

String url = '';

String generateMd5(String timeStamp){
  List<int> content = utf8.encode( '$timeStamp' + privateApiKey + publicApiKey);
  //var content2 = Utf8Encoder().convert(data);
  Digest digest = md5.convert(content);

  return hex.encode(digest.bytes);
}

Future<CharacterDataContainer>getCharacters() async {
  String timeStamp = DateTime.now().toIso8601String();
  String hash = generateMd5(timeStamp);
  url = "$baseUrl" + "$charactersResource" + "?limit=5&apikey=$publicApiKey&ts=$timeStamp&hash=$hash";

  http.Response jsonResponse = await http.get(url);
  String jsonString = jsonResponse.body;

  print('network.dart: ln 29 - This is the JSON response: $jsonString');
  var contentMap = jsonDecode(jsonString);

  CharacterDataWrapper dataWrapper = CharacterDataWrapper.fromJson(contentMap);

  return dataWrapper.data;
}
