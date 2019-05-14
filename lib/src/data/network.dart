import 'dart:async';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';

import '../models/character_data_wrapper.dart';
import '../models/character_data_container.dart';
import '../data/url.dart';

String url = '';

generateMd5(var timeStamp){
  var content = utf8.encode( '$timeStamp' + privateApiKey + publicApiKey);
  //var content2 = Utf8Encoder().convert(data);
  var digest = md5.convert(content);

  return hex.encode(digest.bytes);
}

Future<CharacterDataContainer>getCharacters() async {
  var timeStamp = DateTime.now().toIso8601String();
  var hash = generateMd5(timeStamp);
  url = "$baseUrl" + "$charactersResource" + "?limit=5&apikey=$publicApiKey&ts=$timeStamp&hash=$hash";
  //print(url);

  var jsonResponse = await http.get(url);
  var jsonString = jsonResponse.body;

  print('network.dart: ln 29 - This is the JSON response: $jsonString');
  var contentMap = jsonDecode(jsonString);

  CharacterDataWrapper dataWrapper = CharacterDataWrapper.fromJson(contentMap);

  return dataWrapper.data;
}
