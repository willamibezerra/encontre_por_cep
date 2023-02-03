import 'package:encontre_por_cep/state/cep_controller.dart';
import 'package:encontre_por_cep/state/cep_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Informe o cep'),
        TextField(
          controller: controller,
        ),
        ElevatedButton(
            onPressed: () {
              context.read<CepController>().findCep(cep: controller.text);
            },
            child: const Text('carregar')),
        BlocBuilder<CepController, CepState>(
          builder: (context, state) {
            if (state is CepSucess) {
              return Text(state.result.bairro.toString());
            } else if (state is CepInProgress) {
              return const CircularProgressIndicator();
            } else if (state is CepFailure) {
              return const Text('Falha ao carregar o cep');
            } else {
              return Container();
            }
          },
        )
      ]),
    );
  }
}
