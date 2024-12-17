import 'package:moch_api/data/model/notification_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'dart:isolate';

import 'dart:developer' as developer;

// Future<List<NotificationModel>> fetchNotification() async {
//   final response = await http.get(Uri.parse(notificationapi));

//   switch (response.statusCode) {
//     case 200:
//       final Map<String, dynamic> jsonResponse = json.decode(response.body);
//       final List<dynamic> data = jsonResponse['data'];
//       return data
//           .map((notification) => NotificationModel.fromJson(notification))
//           .toList();
//     case 400:
//       throw Exception('Bad request');
//     case 401:
//       throw Exception('Unauthorized');
//     case 403:
//       throw Exception('Forbidden');
//     case 404:
//       throw Exception('Not found');
//     case 500:
//       throw Exception('Internal server error');
//     default:
//       throw Exception('Failed to load notifications');
//   }
// }

const String notificationapi =
    'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';

void parseNotifications(SendPort sendPort) {
  final receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);

  receivePort.listen((message) {
    final responseBody = message[0];
    final replyPort = message[1];
    final Map<String, dynamic> jsonResponse = json.decode(responseBody);
    final List<dynamic> data = jsonResponse['data'];
    final notifications = data
        .map((notification) => NotificationModel.fromJson(notification))
        .toList();
    developer.log('Parsed notifications in isolate',
        name: 'parseNotifications', level: 0);
    replyPort.send(notifications);
  });
}

Future<List<NotificationModel>> fetchNotification() async {
  final response = await http.get(Uri.parse(notificationapi));

  switch (response.statusCode) {
    case 200:
      developer.log('Fetched notifications successfully',
          name: 'fetchNotification', level: 0);
      return await computeInIsolate(response.body);
    case 400:
      throw Exception('Bad request');
    case 401:
      throw Exception('Unauthorized');
    case 403:
      throw Exception('Forbidden');
    case 404:
      throw Exception('Not found');
    case 500:
      throw Exception('Internal server error');
    default:
      throw Exception('Failed to load notifications');
  }
}

Future<List<NotificationModel>> computeInIsolate(String responseBody) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(parseNotifications, receivePort.sendPort);
  final sendPort = await receivePort.first as SendPort;

  final responseReceivePort = ReceivePort();
  sendPort.send([responseBody, responseReceivePort.sendPort]);

  final result = await responseReceivePort.first as List<NotificationModel>;
  developer.log('Parsed notifications in main thread',
      name: 'computeInIsolate', level: 0);
  return result;
}
