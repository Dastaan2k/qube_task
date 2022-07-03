import 'package:json_annotation/json_annotation.dart';

part 'video_model.g.dart';

@JsonSerializable()
class VideoModel {

  String title;
  String description;
  @JsonKey(name: 'youtube_url') String youtubeUrl;

  VideoModel(this.title, this.description, this.youtubeUrl);

  factory VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoModelToJson(this);

}