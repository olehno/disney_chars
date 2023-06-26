import 'package:dio/dio.dart';
import 'package:disney_chars/disney_character.dart';
import 'package:disney_chars/fave_char_body.dart';

class FaveApiClient {
  final Dio _dio;

  FaveApiClient(this._dio);

  Future<void> addChatToFavorite(DisneyCharacter character) async {
    final body = FaveCharBody(
      name: character.name,
      data: FaveCharDataBody(
        id: character.id,
        name: character.name,
        imageUrl: character.imageUrl,
      ),
    );
    await _dio.post("objects", data: body.toJson());
  }
}
