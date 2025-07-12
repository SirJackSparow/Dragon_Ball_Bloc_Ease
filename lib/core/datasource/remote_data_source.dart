import 'package:dragonball_bloc_ease/core/dio/DioClient.dart';
import 'package:dragonball_bloc_ease/core/model/dragonball_model.dart';
import 'base_data_source.dart';

class RemoteDataSource implements BaseDataSource {
  final DioClient dioClient;

  RemoteDataSource(this.dioClient);

  @override
  Future<DragonballModel> fetchCharacters() async {
    final res = await dioClient.get('characters');
    return DragonballModel.fromJson(res.data);

    //below code same function as above
    // return dioClient.get('characters').then((res) {
    //   return res.data;
    // });
  }
}
