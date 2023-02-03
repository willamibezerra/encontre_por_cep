import '../models/cep_model.dart';

abstract class CepState {}

class CepInitial extends CepState {}

class CepInProgress extends CepState {}

class CepSucess extends CepState {
  final CepModel result;
  CepSucess({
    required this.result,
  });
}

class CepFailure extends CepState {}
