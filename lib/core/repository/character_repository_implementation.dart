import '../datasource/base_data_source.dart';
import '../model/dragonball_model.dart';
import 'characters_repository.dart';

class CharacterRepositoryImpl implements CharactersRepository {
  final  BaseDataSource baseDataSource;

  CharacterRepositoryImpl(this.baseDataSource);

  @override
  Future<DragonballModel> getCharacters() async {
    return baseDataSource.fetchCharacters();
  }
}
