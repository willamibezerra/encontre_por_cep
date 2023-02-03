import 'package:dio/dio.dart';
import 'package:encontre_por_cep/models/cep_model.dart';

class CepRepository {
  Future<CepModel> load({required String cep}) async {
    final dio = Dio();
    final result = await dio.get('https://viacep.com.br/ws/$cep/json/');
    CepModel item = CepModel.fromJson(result.data);
    return item;
  }
}
