import 'package:disney_chars/disney_api_client.dart';
import 'package:disney_chars/disney_character.dart';
import 'package:disney_chars/disney_repository.dart';
import 'package:disney_chars/fave_api_client.dart';

class NetworkDisneyRepository implements DisneyRepository {
  final DisneyApiClient _disneyApiClient;
  final FaveApiClient _faveApiClient;

  NetworkDisneyRepository(this._disneyApiClient, this._faveApiClient);

  @override
  Future<List<DisneyCharacter>> getAllCharacters() async {
    final response = await _disneyApiClient.getAllCharacters();
    final character = response.map((character) => DisneyCharacter(
          id: character.id,
          name: character.name ?? "Unknown",
          imageUrl: character.imageUrl,
          yearCreatedAt: character.createdAt.substring(0, 4),
          allMovies: character.films.join(","),
        ));
    return character.toList();
  }

  @override
  Future<DisneyCharacter> getOneCharacterInfo(int id) async {
    final response = await _disneyApiClient.getOneCharacterInfo(id);
    final oneCharacter = DisneyCharacter(
        id: response.id,
        name: response.name ?? "Unknown",
        imageUrl: response.imageUrl,
        allMovies: response.films.join(","),
        yearCreatedAt: response.createdAt.substring(0, 4));
    return oneCharacter;
  }

  @override
  Future<void> addCharToFavorite(DisneyCharacter character) async {
    await _faveApiClient.addChatToFavorite(character);
  }
}
