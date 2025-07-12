
import '../model/dragonball_model.dart';

abstract class CharactersRepository {
  Future<DragonballModel> getCharacters();
}