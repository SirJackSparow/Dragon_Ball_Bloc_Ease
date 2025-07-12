import 'package:bloc_ease/bloc_ease.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/model/dragonball_model.dart';
import '../core/repository/characters_repository.dart';

typedef CharacterState = BlocEaseState<DragonballModel>;
typedef CharacterInitState = InitialState<DragonballModel>;

class CharacterCubit extends Cubit<CharacterState> with CacheExBlocEaseStateMixin {
  final CharactersRepository characterRepository;
  CharacterCubit(this.characterRepository) : super(const CharacterInitState());

  Future<void> getCharacters() async {
    emitLoading("Fetching data...");
    try {
      final characters = await characterRepository.getCharacters();
      emitSuccess(characters);
    } catch (e) {
      emitFailure("Failed to fetch characters");
    }
  }
}
