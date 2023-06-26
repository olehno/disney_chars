import 'package:disney_chars/disney_character.dart';

abstract class DisneyRepository {
  Future<List<DisneyCharacter>> getAllCharacters();
  Future<DisneyCharacter> getOneCharacterInfo(int id);
  Future<void> addCharToFavorite(DisneyCharacter character);
}