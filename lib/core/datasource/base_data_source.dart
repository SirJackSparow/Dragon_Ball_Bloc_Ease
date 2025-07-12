import '../model/dragonball_model.dart';

abstract class BaseDataSource {
  Future<DragonballModel> fetchCharacters();
}