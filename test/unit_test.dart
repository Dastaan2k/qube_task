import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:qube_task/api/qb_api_collection.dart';
import 'package:qube_task/models/api_response.dart';
import 'package:qube_task/models/dashboard_model.dart';

import 'unit_test.mocks.dart';

const baseUrl = 'https://www.qubehealth.com/';


@GenerateMocks([http.Client])
void main() async {

  TestWidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();

  group('fetchDashboardData', () {
    test('successful request', () async {
      final client = MockClient();

      final file = File('test/assets/qb_ref_response.json').readAsStringSync();

      when(client
          .post(Uri.parse('${baseUrl}qube_services/api/testservice/getListOfUserFeeling'), headers: {'X-Api-Key' : dotenv.env['API_KEY']!}, body: jsonEncode({"user_id": "3206161992", "feeling_date": "15-04-2022"})))
          .thenAnswer((_) async =>
          http.Response(file, 200));

      expect((await QBApiCollection.fetchDashboardData(client)).data, isA<DashboardModel>());
    });

    test('exception', () async {
      final client = MockClient();

      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(client
          .post(Uri.parse('${baseUrl}qube_services/api/testservice/getListOfUserFeeling'), headers: {'X-Api-Key' : dotenv.env['API_KEY']!}, body: jsonEncode({"user_id": "3206161992", "feeling_date": "15-04-2022"})))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect((await QBApiCollection.fetchDashboardData(client)).statusCode, 404);
    });
  });

}