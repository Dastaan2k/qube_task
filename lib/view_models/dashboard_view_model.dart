import 'package:get/get.dart';
import 'package:qube_task/api/qb_api_collection.dart';
import 'package:qube_task/models/dashboard_model.dart';
import 'package:http/http.dart' as http;

import '../misc/constants.dart';
import '../models/api_response.dart';

class DashboardViewModel extends GetxController {

  Rx<ConnectionStateEnum> dashboardPageState = Rx<ConnectionStateEnum>(ConnectionStateEnum.waiting);
  int? statusCode;
  DashboardModel? dashboardData;

  fetchDashboardDataFromServer() async {
    APIResponse<DashboardModel?> response = await QBApiCollection.fetchDashboardData(http.Client());
    statusCode = response.statusCode;
    if(response.error) {
      dashboardPageState.value = ConnectionStateEnum.error;
    }
    else {
      dashboardData = response.data!;
      dashboardPageState.value = ConnectionStateEnum.done;
    }
  }

}


