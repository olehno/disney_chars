import 'package:json_annotation/json_annotation.dart';
part 'fave_char_body.g.dart';

@JsonSerializable(createFactory: false, explicitToJson: true)
class FaveCharBody {
  final String name;
  final FaveCharDataBody data;

  const FaveCharBody({
    required this.name,
    required this.data,
  });
  Map<String, dynamic> toJson() => _$FaveCharBodyToJson(this);
}

@JsonSerializable(createFactory: false)
class FaveCharDataBody {
  final int id;
  final String name;
  final String imageUrl;

  const FaveCharDataBody({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
  Map<String, dynamic> toJson() => _$FaveCharDataBodyToJson(this);

}
