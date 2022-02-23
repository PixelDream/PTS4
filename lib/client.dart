import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';

const graphqlEndpoint = 'https://lovely-horse-33.loca.lt/';
//const subscriptionEndpoint = 'wss://ugly-lizard-49.loca.lt/';

Future<Client> initClient() async {
  await Hive.initFlutter();

  final box = await Hive.openBox<Map<String, dynamic>>("graphql");

  await box.clear();

  final store = HiveStore(box);

  final cache = Cache(store: store);

  final link = HttpLink(graphqlEndpoint);

  final client = Client(
    link: link,
    cache: cache,
  );

  return client;
}
