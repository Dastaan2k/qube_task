import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qube_task/view_models/dashboard_view_model.dart';
import 'package:qube_task/widgets/appbar.dart';
import 'package:qube_task/widgets/divider.dart';
import '../../views/dashboard/interesting_facts_widget.dart';
import '../../views/dashboard/other_widget.dart';
import '../../views/dashboard/feelings_percentage_widget.dart';
import 'calendar_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(DashboardViewModel()).fetchDashboardDataFromServer();

    return Material(
      child: SafeArea(
        child: Column(
          children: const [
            QBAppbar(title: 'Your Feelings History'),
            Expanded(child: DashboardBody())
          ],
        ),
      ),
    );
  }
}



class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 20),
        FeelingsPercentageWidget(),
        SizedBox(height: 15),
        QBDivider(),
        SizedBox(height: 15),
        CalendarWidget(),
        SizedBox(height: 15),
        QBDivider(),
        SizedBox(height: 15),
        OtherWidget(),
        SizedBox(height: 15),
        QBDivider(),
        SizedBox(height: 15),
        InterestingFactsWidget(),
        SizedBox(height: 20),
      ],
    );
  }
}
