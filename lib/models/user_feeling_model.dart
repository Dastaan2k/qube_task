import 'package:json_annotation/json_annotation.dart';

part 'user_feeling_model.g.dart';

@JsonSerializable()
class UserFeelingModel {

  @JsonKey(name: 'feeling_id') String feelingId;
  @JsonKey(name: 'user_feeling_id') String userFeelingId;
  @JsonKey(name: 'feeling_name') String feelingName;
  @JsonKey(name: 'submit_time') String submitTime;

  UserFeelingModel(this.feelingId, this.userFeelingId, this.feelingName, this.submitTime);

  factory UserFeelingModel.fromJson(Map<String, dynamic> json) => _$UserFeelingModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserFeelingModelToJson(this);

}