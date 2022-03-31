import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String _graphqlEndpoint = 'https://cloud-549579146.onetsolutions.network/';
const String _subscriptionEndpoint = 'wss://cloud-549579146.onetsolutions.network/';

Future<Client> initClient() async {
  final FlutterSecureStorage storage = FlutterSecureStorage();

  await Hive.initFlutter();

  final box = await Hive.openBox<Map<String, dynamic>>("graphql");
  await box.clear();

  final store = HiveStore(box);
  final cache = Cache();

  final String? token = await storage.read(key: "jwt");

  final link;
  if (token != null) {
    Map<String, String> credentials = <String, String>{};
    credentials['Authorization'] = 'Bearer $token';

    link = HttpLink(_graphqlEndpoint, defaultHeaders: credentials);
  } else {
    link = HttpLink(_graphqlEndpoint);
  }

  final client = Client(link: link, cache: cache);

  return client;
}
