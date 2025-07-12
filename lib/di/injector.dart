import 'package:dio/dio.dart';
import 'package:dragonball_bloc_ease/core/datasource/base_data_source.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import '../core/datasource/remote_data_source.dart';
import '../core/dio/DioClient.dart';
import '../core/repository/character_repository_implementation.dart';
import '../core/repository/characters_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  _initCore();
  _initDataStore();
  _iniRepository();
  await _initExternal();

}

void _initDataStore() {
  sl.registerLazySingleton<BaseDataSource>(() => RemoteDataSource(sl()));
}

void _iniRepository() {
 sl.registerLazySingleton<CharactersRepository>(() => CharacterRepositoryImpl(sl()));
}

void _initCore() {
  sl.registerLazySingleton(() => DioClient(sl()));
}


Future<void> _initExternal() async {
  sl.registerLazySingleton(() => Dio());
  //final hiveBox = await Hive.openBox('app_data');
}