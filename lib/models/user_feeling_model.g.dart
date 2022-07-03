// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_feeling_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserFeelingModel _$UserFeelingModelFromJson(Map<String, dynamic> json) =>
    UserFeelingModel(
      json['feeling_id'] as String,
      json['user_feeling_id'] as String,
      json['feeling_name'] as String,
      json['submit_time'] as String,
    );

Map<String, dynamic> _$UserFeelingModelToJson(UserFeelingModel instance) =>
    <String, dynamic>{
      'feeling_id': instance.feelingId,
      'user_feeling_id': instance.userFeelingId,
      'feeling_name': instance.feelingName,
      'submit_time': instance.submitTime,
    };
