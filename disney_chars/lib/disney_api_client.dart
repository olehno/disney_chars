import 'package:dio/dio.dart';
import 'package:disney_chars/disney_response.dart';

class DisneyApiClient {
  final Dio _dio;

  DisneyApiClient(this._dio);

  Future<List<DisneyDataResponse>> getAllCharacters() async {
    final response = await _dio.get("character");
    final fullResponse = DisneyFullResponse.fromJson(response.data);
    return fullResponse.data;
  }

  Future<DisneyDataResponse> getOneCharacterInfo(int id) async {
    final response = await _dio.get("character/$id");
    final oneCharResponse = DisneyOneCharResponse.fromJson(response.data);
    return oneCharResponse.data;
  }

}