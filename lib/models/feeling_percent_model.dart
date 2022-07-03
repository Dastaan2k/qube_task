import 'package:json_annotation/json_annotation.dart';

part 'feeling_percent_model.g.dart';

@JsonSerializable()
class FeelingPercentModel {

  @JsonKey(name: 'Happy') String? happy;
  @JsonKey(name: 'Sad') String? sad;
  @JsonKey(name: 'Energetic') String? energetic;
  @JsonKey(name: 'Calm') String? calm;
  @JsonKey(name: 'Angry')String? angry;
  @JsonKey(name: 'Bored') String? bored;
  @JsonKey(name: 'Love') String? love;


  FeelingPercentModel({this.love, this.bored, this.calm, this.angry, this.happy, this.sad, this.energetic});

  factory FeelingPercentModel.fromJson(Map<String, dynamic> json) => _$FeelingPercentModelFromJson(json);

  Map<String ,dynamic> toJson() => _$FeelingPercentModelToJson(this);

}