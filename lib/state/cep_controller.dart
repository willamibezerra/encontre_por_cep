import 'package:bloc/bloc.dart';
import 'package:encontre_por_cep/repositories/cep_repository.dart';
import 'package:encontre_por_cep/state/cep_state.dart';

class CepController extends Cubit<CepState> {
  CepRepository repository = CepRepository();
  CepController() : super(CepInitial());
  Future<void> findCep({required String cep}) async {
    emit(CepInProgress());

    try {
      final result = await repository.load(cep: cep);
      emit(CepSucess(result: result));
    } catch (e) {
      emit(CepFailure());
    }
  }
}
