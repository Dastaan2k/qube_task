import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qube_task/misc/constants.dart';
import 'package:qube_task/models/feeling_percent_model.dart';
import 'package:qube_task/view_models/dashboard_view_model.dart';

import '../../misc/hex_color.dart';

class FeelingsPercentageWidget extends StatelessWidget {
  const FeelingsPercentageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Your feelings from last 30 days', style: TextStyle(fontSize: 16)),
        ),
        const SizedBox(height: 15),
        GetX<DashboardViewModel>(
          builder: (controller) {
            if(controller.dashboardPageState.value == ConnectionStateEnum.waiting) {
              return const LoadingPercentageWidget();
            }
            else if(controller.dashboardPageState.value == ConnectionStateEnum.done) {
              return const SuccessfulFeelingsPercentageWidget();
            }
            else {
              return const ErrorFeelingWidget();
            }
          },
        )
      ],
    );
  }

}



class SuccessfulFeelingsPercentageWidget extends StatelessWidget {

  const SuccessfulFeelingsPercentageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var feelingPercentModel = Get.put(DashboardViewModel()).dashboardData!.feelingPercent;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 12.5),
          FeelingTile(feeling: FeelingTypeEnum.energetic, value: feelingPercentModel.energetic),
          FeelingTile(feeling: FeelingTypeEnum.sad, value: feelingPercentModel.sad),
          FeelingTile(feeling: FeelingTypeEnum.happy, value: feelingPercentModel.happy),
          FeelingTile(feeling: FeelingTypeEnum.angry, value: feelingPercentModel.angry),
          FeelingTile(feeling: FeelingTypeEnum.calm, value: feelingPercentModel.calm),
          FeelingTile(feeling: FeelingTypeEnum.bored, value: feelingPercentModel.bored),
          FeelingTile(feeling: FeelingTypeEnum.love, value: feelingPercentModel.love),
          const SizedBox(width: 12.5),
        ],
      ),
    );
  }
}


class LoadingPercentageWidget extends StatelessWidget {
  const LoadingPercentageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          SizedBox(width: 12.5),
          LoadingFeelingTile(),
          LoadingFeelingTile(),
          LoadingFeelingTile(),
          LoadingFeelingTile(),
          LoadingFeelingTile(),
          LoadingFeelingTile(),
          LoadingFeelingTile(),
          SizedBox(width: 12.5),
        ],
      ),
    );
  }
}






class FeelingTile extends StatelessWidget {

  final FeelingTypeEnum feeling;
  final String? value;

  const FeelingTile({required this.feeling, this.value, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: value == null ? 0.4 : 1,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 7.5),
            decoration: BoxDecoration(
              color: HexColor('#F1F2F3'),
              boxShadow: value == null ? null : [BoxShadow(color: Colors.black.withOpacity(0.1), offset: const Offset(4,4), blurRadius: 8)],
              borderRadius: BorderRadius.circular(70),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(value == null ? '' : '${int.parse(value!) * 10}%', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w200)),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: HexColor('#84c457'), shape: BoxShape.circle),
                  child: Image.asset(feelingIconUriMap[feeling]!, height: 20, width: 20),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Text(feelingTitleMap[feeling]!, style: const TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}



class LoadingFeelingTile extends StatelessWidget {
  const LoadingFeelingTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7.5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), offset: const Offset(4,4), blurRadius: 8)],
        borderRadius: BorderRadius.circular(70),
      ),
      child: Column(
        children: [
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('--%', style: TextStyle(fontSize: 12, color: Colors.transparent)),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.grey.shade400, shape: BoxShape.circle),
          )
        ],
      ),
    );
  }
}



class ErrorFeelingWidget extends StatelessWidget {

  const ErrorFeelingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var dashboardVM = Get.put(DashboardViewModel());

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 75,
      child: Center(child: Text('Error occurred : ${dashboardVM.statusCode!}'),),
    );
  }
}

