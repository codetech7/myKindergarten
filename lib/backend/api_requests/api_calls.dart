import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SampleXanoCallCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "param1": "[{\\"conversationId\\":\\"3a30b8d9-030a-4422-8244-c90dbd02d19c\\",\\"conversationTitle\\":\\"bbd7843a-af7f-4441-b7cf-b951508c79e9\\",\\"conversationMessages\\":[{\\"type\\":\\"conversation.item.create\\",\\"item\\":{\\"type\\":\\"message\\",\\"role\\":\\"user\\",\\"content\\":[{\\"type\\":\\"input_text\\",\\"text\\":\\"Hi Roberto my name is Dan from the travel agency. It's great to finally talk\\"}]}},{\\"previous_item_id\\":\\"item_CJgMqrJ6gsI0XES5DU6hf\\",\\"type\\":\\"conversation.item.created\\",\\"item\\":{\\"item_id\\":\\"item_CJgMqc4ou2bHsHAtAR6V5\\",\\"type\\":\\"message\\",\\"role\\":\\"assistant\\",\\"content\\":[{\\"type\\":\\"text\\",\\"text\\":\\"Dan, it’s good to hear your voice. Let’s explore what this journey could mean for the team.\\"}]}},{\\"previous_item_id\\":null,\\"type\\":\\"conversation.item.input_audio_transcription.delta\\",\\"item\\":{\\"item_id\\":\\"item_CJgMy0sYjhmEAE5FMgDm7\\",\\"type\\":\\"message\\",\\"role\\":\\"user\\",\\"content\\":[{\\"type\\":\\"input_text\\",\\"text\\":\\"Sure, so first of all, Roberto, it's great to meet you and I'm super excited to have the opportunity to present our lunar trips. Maybe you can tell me a bit about, so I'm with the company from day one and I'm really passionate about getting people to the moon, I think it's really the best adventure that people can do. And I'm here to answer any of your questions, but maybe you can tell me a bit about you guys, what you are looking for, other options, just spill whatever you feel free to share and we can take it from there.\\"}]}},{\\"previous_item_id\\":\\"item_CJgNbyIsHfwEW5wscCTVv\\",\\"type\\":\\"conversation.item.created\\",\\"item\\":{\\"item_id\\":\\"item_CJgNbvscjk9qjFki9HPc0\\",\\"type\\":\\"message\\",\\"role\\":\\"assistant\\",\\"content\\":[{\\"type\\":\\"text\\",\\"text\\":\\"Dan, I appreciate your passion. We’re looking for something that sparks imagination—a journey that bonds the team, gets them thinking bigger. We’ve explored some earthbound retreats, but this—this is another level.\\"}]}},{\\"previous_item_id\\":null,\\"type\\":\\"conversation.item.input_audio_transcription.delta\\",\\"item\\":{\\"item_id\\":\\"item_CJgNtwFbxqd6IjJ6vJmrE\\",\\"type\\":\\"message\\",\\"role\\":\\"user\\",\\"content\\":[{\\"type\\":\\"input_text\\",\\"text\\":\\"I completely agree, my friend, and trust me, I would like to put you guys as a reference. You're such a great company. After you come back, and to get your feedback, and to share it with the world, because I'm sure you will have a great time. But tell me, how many people, how much time, what are you looking for? When do you plan to travel? All the basics.\\"}]}},{\\"previous_item_id\\":\\"item_CJgOJhzXOneq2c4VTfgot\\",\\"type\\":\\"conversation.item.created\\",\\"item\\":{\\"item_id\\":\\"item_CJgOJfxvoYXWMQuGrMRsA\\",\\"type\\":\\"message\\",\\"role\\":\\"assistant\\",\\"content\\":[{\\"type\\":\\"text\\",\\"text\\":\\"Dan, we’re envisioning about a dozen people, a full week to really immerse. Timing—we’re flexible, but we want it to align with a major milestone. It’s all about making it unforgettable.\\"}]}},{\\"previous_item_id\\":null,\\"type\\":\\"conversation.item.input_audio_transcription.delta\\",\\"item\\":{\\"item_id\\":\\"item_CJgOaQh51uGTkN7c02FmW\\",\\"type\\":\\"message\\",\\"role\\":\\"user\\",\\"content\\":[{\\"type\\":\\"input_text\\",\\"text\\":\\"So let's talk about unforgettable and budget, if you will, because the unforgettable come with a price point. Now we can go crazy and give you a full package, but it will be really super expensive. And we can give you an entry level, which just takes you to the moon and gets you back. And we can give you something in between, but tell me how much are you looking from us for something in the between for the, oh my God, we are going to be crazy or let's have something modest. We're still looking at dollars, respecting a customer value and stuff like that.\\"}]}},{\\"previous_item_id\\":\\"item_CJgPD7SIiJXCYGMCPkt59\\",\\"type\\":\\"conversation.item.created\\",\\"item\\":{\\"item_id\\":\\"item_CJgPDRQIpd5E2KqKoiLDs\\",\\"type\\":\\"message\\",\\"role\\":\\"assistant\\",\\"content\\":[{\\"type\\":\\"text\\",\\"text\\":\\"Dan, let’s say we’re leaning toward something in between—spectacular, but not over the top. We respect value, but we want that moment of awe.\\"}]}},{\\"previous_item_id\\":\\"item_CJgQHyFUMCyaDKulmhE2C\\",\\"type\\":\\"conversation.item.created\\",\\"item\\":{\\"item_id\\":\\"item_CJgQHx9I7mT6cGjJO9g7A\\",\\"type\\":\\"message\\",\\"role\\":\\"assistant\\",\\"content\\":[{\\"type\\":\\"text\\",\\"text\\":\\"That’s a fascinating picture, Dan. Let’s get that detail in writing. Then we can gather the team’s thoughts and circle back for a deeper dive next week.\\"}]}},{\\"previous_item_id\\":null,\\"type\\":\\"conversation.item.input_audio_transcription.delta\\",\\"item\\":{\\"item_id\\":\\"item_CJgPRDer19EUzLFU0sOI3\\",\\"type\\":\\"message\\",\\"role\\":\\"user\\",\\"content\\":[{\\"type\\":\\"input_text\\",\\"text\\":\\"OK, no problem. So let's say for a week of 12 people flying to the moon with a moment of awe and everything included, some time for you to talk, to party, to eat. And we have a volcano eruption that we can around for you, which is really great fun. That should be something around \$15,000 per employee, which is around 30% off of our retail price, just because you guys are an amazing company. Now, we don't need to secure it right now. If you want, I can share everything over an email. And maybe later, we can have a call about questions, answers. And I'll share with you some more data. So you can ask maybe the team or your HR department. And we can schedule something for next week and discuss it more.\\"}]}},{\\"previous_item_id\\":null,\\"type\\":\\"conversation.item.input_audio_transcription.delta\\",\\"item\\":{\\"item_id\\":\\"item_CJgQUZYfUBXPerainNBbk\\",\\"type\\":\\"message\\",\\"role\\":\\"user\\",\\"content\\":[{\\"type\\":\\"input_text\\",\\"text\\":\\"That's great. So if there's nothing else for now, let's call it a day.\\"}]}},{\\"previous_item_id\\":\\"item_CJgQezfRDMuOsuEoAxHtV\\",\\"type\\":\\"conversation.item.created\\",\\"item\\":{\\"item_id\\":\\"item_CJgQe1ZLjZe5BWP0Kt2z7\\",\\"type\\":\\"message\\",\\"role\\":\\"assistant\\",\\"content\\":[{\\"type\\":\\"text\\",\\"text\\":\\"Sounds good, Dan. We'll pick it up from here next time. Take care.\\"}]}}]}]",
  "param2": 380
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sample Xano Call',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:hPn3e-I0/analyzeText',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? words(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.words''',
      ));
  static double? wordsPerMinute(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.wpm''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
