import 'package:json_annotation/json_annotation.dart';

part 'disney_response.g.dart';

@JsonSerializable(createToJson: false)
class DisneyFullResponse {
  final List<DisneyDataResponse> data;

  factory DisneyFullResponse.fromJson(Map<String, dynamic> json) =>
      _$DisneyFullResponseFromJson(json);

  const DisneyFullResponse({
    required this.data,
  });
}

@JsonSerializable(createToJson: false)
class DisneyDataResponse {
  @JsonKey(name: "_id")
  final int id;
  final String? name;
  final String imageUrl;
  final List<String> films;
  final String createdAt;

  factory DisneyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DisneyDataResponseFromJson(json);

  const DisneyDataResponse({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.films,
    required this.createdAt,
  });
}

@JsonSerializable(createToJson: false)
class DisneyOneCharResponse {
  final DisneyDataResponse data;

  factory DisneyOneCharResponse.fromJson(Map<String, dynamic> json) =>
      _$DisneyOneCharResponseFromJson(json);

  const DisneyOneCharResponse({
    required this.data,
  });
}
