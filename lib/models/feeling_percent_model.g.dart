// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeling_percent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeelingPercentModel _$FeelingPercentModelFromJson(Map<String, dynamic> json) =>
    FeelingPercentModel(
      love: json['Love'] as String?,
      bored: json['Bored'] as String?,
      calm: json['Calm'] as String?,
      angry: json['Angry'] as String?,
      happy: json['Happy'] as String?,
      sad: json['Sad'] as String?,
      energetic: json['Energetic'] as String?,
    );

Map<String, dynamic> _$FeelingPercentModelToJson(
        FeelingPercentModel instance) =>
    <String, dynamic>{
      'Happy': instance.happy,
      'Sad': instance.sad,
      'Energetic': instance.energetic,
      'Calm': instance.calm,
      'Angry': instance.angry,
      'Bored': instance.bored,
      'Love': instance.love,
    };
