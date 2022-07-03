import 'package:json_annotation/json_annotation.dart';
import 'package:qube_task/models/feeling_percent_model.dart';
import 'package:qube_task/models/user_feeling_model.dart';
import 'package:qube_task/models/video_model.dart';

part 'dashboard_model.g.dart';

@JsonSerializable()
class DashboardModel {

  @JsonKey(name: 'feeling_percentage') FeelingPercentModel feelingPercent;
  @JsonKey(name: 'feeling_list') List<UserFeelingModel> userFeelingList;
  @JsonKey(name: 'video_arr') List<VideoModel> videoList;


  DashboardModel(this.feelingPercent, this.userFeelingList, this.videoList);

  factory DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardModelToJson(this);

}