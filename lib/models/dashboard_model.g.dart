// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    DashboardModel(
      FeelingPercentModel.fromJson(
          json['feeling_percentage'] as Map<String, dynamic>),
      (json['feeling_list'] as List<dynamic>)
          .map((e) => UserFeelingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['video_arr'] as List<dynamic>)
          .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DashboardModelToJson(DashboardModel instance) =>
    <String, dynamic>{
      'feeling_percentage': instance.feelingPercent,
      'feeling_list': instance.userFeelingList,
      'video_arr': instance.videoList,
    };
