import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:qube_task/models/api_response.dart';

import '../models/dashboard_model.dart';

class QBApiCollection {

  static const baseUrl = 'https://www.qubehealth.com/';

  static Future<APIResponse<DashboardModel?>> fetchDashboardData(http.Client client) async {

    var response = await client.post(
        Uri.parse('${baseUrl}qube_services/api/testservice/getListOfUserFeeling'),
        headers: {'X-Api-Key' : dotenv.env['API_KEY']!},
        body: jsonEncode({"user_id": "3206161992", "feeling_date": "15-04-2022"})
    );

    if(response.statusCode == 200) {
      return APIResponse(data: DashboardModel.fromJson(jsonDecode(response.body)['data']));
    }
    else {
      return APIResponse(error: true, statusCode: response.statusCode, reasonPhrase: response.reasonPhrase);
    }

  }

}